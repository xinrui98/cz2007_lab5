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