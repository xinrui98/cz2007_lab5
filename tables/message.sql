USE ssr1g2
GO

DROP TABLE [Message]

CREATE TABLE [Message] (
    MessageID VARCHAR(255) PRIMARY KEY,
    Timestamp DATETIME NOT NULL,
    Text VARCHAR(255),
    PostBy VARCHAR(255) NOT NULL,
    LocationID VARCHAR(255) FOREIGN KEY
        REFERENCES [Location.ID](LocationID)
)
GO

DROP TRIGGER InvalidPoster
GO

CREATE TRIGGER InvalidPoster ON [Message]
    INSTEAD OF INSERT 
    AS
BEGIN
    IF (EXISTS (
        SELECT * FROM [User] AS U, inserted AS i
        WHERE i.PostBy=U.UserId AND
            (U.IsAdmin=0 AND U.IsContactPerson=0)
        )
    )
        RAISERROR('Invalid UserId. Not allowed to post Message', 18, 50000)
    ELSE IF (EXISTS (
        SELECT * 
        FROM [User] AS U, inserted AS i, Associate AS A
        WHERE U.UserId=i.PostBy AND
            A.CompanyID=U.CompanyId AND
            A.LocationID<>i.LocationID AND 
            U.IsAdmin=0
    ))
    BEGIN
        RAISERROR('Invalid UserId. Not allowed to post Message on this location', 18, 50000)
    END
    ELSE
        INSERT INTO [Message] 
        SELECT * FROM inserted
END
GO

CREATE TRIGGER ProtectIDs ON [Message]
    INSTEAD OF UPDATE
    AS
BEGIN
    IF UPDATE(MessageID)
        RAISERROR('Not allowed to change MessageID', 18, 50000)

    IF UPDATE(PostBy)
        RAISERROR('Not allowed to change PostBy', 18, 50000)
    
    INSERT INTO [Message]
    SELECT * FROM inserted
END
GO

-- DELETE FROM [Message]
-- GO

-- INSERT INTO [User]
-- VALUES
--     ('user0', 'asdf', 'u1', 'M', NULL, NULL, 1, 0, '01'),
--     ('user1', 'u1', 'u1', 'M', NULL, NULL, 0, 1, '01'),
--     ('user2', 'u2', 'u2', 'M', NULL, NULL, 0, 1, '02'),
--     ('user3', 'u3', 'u3', 'M', NULL, NULL, 0, 0, '03')


DELETE FROM [Message] WHERE MessageID LIKE 'msg%'
GO

INSERT INTO [Message]
VALUES 
    ('msg1', GETDATE(), NULL, 'user1', '01')
GO

UPDATE [Message]
SET Text='test' WHERE Text=NULL;
GO

SELECT * FROM [Message]