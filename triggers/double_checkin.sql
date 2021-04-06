USE ssr1g2
GO

DROP TRIGGER doubleCheckIn
GO

CREATE TRIGGER doubleCheckIn ON CheckInOut
AFTER INSERT
AS
BEGIN
    IF (
        SELECT c1.CheckOut FROM CheckInOut c1, inserted i
        WHERE 
            c1.UserId=i.UserId AND
            c1.CheckIn > ALL(
                SELECT CheckIn FROM CheckInOut c2
                WHERE c2.UserId=i.UserId)
    ) IS NULL
        UPDATE CheckInOut
        SET CheckOut = (SELECT CheckIn FROM inserted)
        WHERE CheckIn > ALL(
                SELECT CheckIn FROM CheckInOut c2
                WHERE c2.UserId=(SELECT CheckIn FROM inserted))
END
GO

SELECT * FROM CheckInOut