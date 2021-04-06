CREATE TRIGGER PositiveTest ON Schedule
AFTER INSERT, UPDATE
AS
BEGIN

    INSERT INTO HighRisk
    SELECT UserId1 FROM Befamily
    WHERE UserId2 = 
    (SELECT UserId FROM INSERTED AS I
    WHERE I.TestResult = 1);

    INSERT INTO HighRisk
    SELECT DISTINCT A.UserId
    FROM CheckInOut A, CheckInOut B, INSERTED I
    WHERE A.LocationId = B.LocationId
    AND B.UserId = I.UserId
    AND A.CheckIn <= DATEADD(hour, 1, B.CheckIn)
    AND A.CheckIn >= DATEADD(hour, -1, B.CheckIn)
    AND B.CheckIn >= DATEADD(day, -7, GETDATE())
    AND I.TestResult = 1

    DELETE FROM HighRisk
    WHERE HighRisk.UserId = (SELECT UserId FROM INSERTED)

END
GO

--Test: Insert befamily relationship between user1 and user3
--      then insert a schedule for user3 with a positive test result
--Result: user3 (positive case) is no longer in HighRisk
--        user1 (family member) are added into HighRisk

-- TRUNCATE TABLE Befamily

-- INSERT INTO Befamily
-- VALUES
-- (
--     'user1',
--     'user3',
--     'Sister'
-- )

-- TRUNCATE TABLE Schedule

-- INSERT INTO Schedule
-- VALUES
-- (
--     'user3', 
--     '2021-03-01 00:01:00', 
--     'Springfield Clinic', 
--     1
-- )
-- GO

-- SELECT * FROM Schedule
-- SELECT * FROM Befamily
-- SELECT * FROM HighRisk

-- GO