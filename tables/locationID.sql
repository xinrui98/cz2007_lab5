USE ssr1g2
GO

-- DROP TABLE [Location.ID]

-- CREATE TABLE [Location.ID] (
--     LocationId VARCHAR(255) PRIMARY KEY,
--     Address VARCHAR(255) FOREIGN KEY REFERENCES [Location.Address](Address),
--     Name VARCHAR(255),
--     Description VARCHAR(255)
-- )
-- GO

CREATE TRIGGER autoAssociate ON [Location.ID]
AFTER INSERT, UPDATE
AS
BEGIN
    INSERT INTO [Associate] (LocationID)
    SELECT LocationID
    FROM inserted
    WHERE LocationId NOT IN (
        SELECT LocationId
        FROM Associate
    )
END
GO

DELETE FROM [Location.ID]
GO

-- INSERT INTO [Location.ID]
-- VALUES 
--     ('loc1', 'add1', NULL, NULL),
--     ('loc2', 'add2', NULL, NULL)
-- GO

SELECT * FROM [Location.ID]