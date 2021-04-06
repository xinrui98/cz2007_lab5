USE ssr1g2
GO

-- DROP TABLE [Associate]
-- GO

-- CREATE TABLE [Associate] (
--     CompanyID VARCHAR(255) FOREIGN KEY 
--         REFERENCES [Company](CompanyID) DEFAULT '00',
--     LocationID VARCHAR(255) FOREIGN KEY
--         REFERENCES [LOCATION.ID](LocationId),
--     PRIMARY KEY (CompanyID, LocationID)
-- )
-- GO

CREATE TRIGGER overrideDefault ON Associate
INSTEAD OF INSERT
AS
BEGIN
    UPDATE Associate
    SET CompanyID=i.CompanyID
    FROM inserted AS i
    WHERE Associate.CompanyID='00' AND
        Associate.LocationID=i.LocationID
END
GO

-- SELECT * FROM [Associate]