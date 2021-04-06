USE ssr1g2
GO

DROP TABLE [Comment]
GO

CREATE TABLE [Comment] (
    UserID VARCHAR(255) FOREIGN KEY 
        REFERENCES [User](UserID),
    MessageID VARCHAR(255) FOREIGN KEY
        REFERENCES [Message](MessageID),
    Timestamp DATETIME NOT NULL,
    Text VARCHAR(255),
    CONSTRAINT PK_CommentKey PRIMARY KEY (UserID, Timestamp)
)
GO

CREATE TRIGGER MessageFirst ON [Comment]
    INSTEAD OF INSERT, UPDATE
    AS
BEGIN
    IF EXISTS (
        SELECT * FROM 
        [Message] as M
        JOIN
        inserted as I
        ON I.MessageID = M.MessageID
        WHERE I.Timestamp < M.Timestamp
    )
    BEGIN
        RAISERROR('Comment Timestamp cannot be before Message Timestamp', 18, 50000)
    END

    ELSE
        INSERT INTO [Comment]
        SELECT * FROM inserted
END