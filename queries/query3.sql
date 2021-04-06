-- Find the users who have checked in 
-- more than 10 locations every day in the last week.

SELECT DISTINCT UserId
FROM CheckInOut
WHERE CheckIn <= GETDATE() AND CheckIn >= dateadd(DAY, -7, GETDATE())
GROUP BY UserId, datepart(DAY, CheckIn)
HAVING COUNT(LocationId) > 10

SELECT CAST(CheckIn as date), UserId, COUNT(*)
FROM CheckInOut
GROUP BY CAST(CheckIn as date), UserId