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