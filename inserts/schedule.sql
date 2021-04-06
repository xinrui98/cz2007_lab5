INSERT INTO Schedule
VALUES
    ('01', '2021-02-10 00:00:00', '02', 1),
    ('01', '2021-12-12 00:00:00', '02', NULL),
    ('02', '2021-01-10 00:00:00', '02', 0),
    ('03', '2021-02-12 00:00:00', '02', 0),
    ('04', '2021-02-12 00:00:00', '02', 0),
    ('04', '2021-02-13 00:00:00', '02', 1),
    ('08', '2021-04-20 00:00:00', '02', NULL),
    ('07', '2021-03-22 00:00:00', '02', 0),
    ('09', '2021-03-22 00:00:00', '02', 1)
GO

-- SELECT * FROM Befamily WHERE UserId1 = '01' OR UserId2 = '01'
SELECT * FROM Schedule

-- TESTS schedule_positivetest trigger
SELECT * FROM HighRisk -- Family members of user '01' will be here
SELECT * FROM [User]