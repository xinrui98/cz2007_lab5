USE ssr1g2
GO

DROP TABLE [Location.Address]
GO

CREATE TABLE [Location.Address] (
    Address VARCHAR(255) PRIMARY KEY,
    X FLOAT NOT NULL,
    Y FLOAT NOT NULL, 
)
GO

-- CREATE TRIGGER InvalidAddress ON [Location.Address]
--     INSTEAD OF INSERT
--     AS
-- BEGIN
--     IF EXISTS (
--         SELECT Address FROM inserted
--         EXCEPT
--         SELECT Address FROM [Location.ID]
--     )
--     BEGIN
--         RAISERROR('Address must exist with a valid LocationID', 18, 50000);
--         RETURN;
--     END

--     INSERT INTO [Location.Address]
--     SELECT * FROM inserted
-- END
-- GO

DELETE FROM [Location.Address]

-- INSERT INTO [Location.Address]
-- VALUES
--     ('add2', 1.1, 1.2),
--     ('add1', 2, 3.2)
-- GO

SELECT * FROM [Location.Address]