-- Find out which companies have the most number 
-- of currently infected employees

USE ssr1g2
GO

SELECT CompanyId
FROM
(SELECT UserId
FROM Schedule S1
WHERE TestResult = 1 AND
    [Datetime] >= ALL(SELECT [Datetime]
        FROM Schedule S2
        WHERE S2.UserId=S1.UserId AND
                S2.TestResult IS NOT NULL)
) AS infected JOIN [User] ON [User].UserId=infected.UserId
GROUP BY CompanyId
HAVING COUNT(*) >= ALL(
    SELECT COUNT(*)
    FROM 
    (SELECT UserId
    FROM Schedule S1
    WHERE TestResult = 1 AND
        [Datetime] >= ALL(SELECT [Datetime]
            FROM Schedule S2
            WHERE S2.UserId=S1.UserId AND
                    S2.TestResult IS NOT NULL)
    ) AS infected JOIN [User] ON [User].UserId=infected.UserId
    GROUP BY CompanyId
)
GO

SELECT ClinicID, COUNT(TestResult)
FROM Schedule
WHERE TestResult = 1
GROUP BY ClinicId

SELECT * FROM [User]
SELECT * FROM Schedule
ORDER BY [Datetime]
