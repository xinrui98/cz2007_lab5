--  Find all the couples such that each couple 
-- has checked in at least 2 common locations 
-- on 1 Jan 2021.

SELECT c.UserId,c2.UserId
FROM [CheckInOut] AS c, [CheckInOut] AS c2, [Befamily] as befam
WHERE c.LocationId = c2.LocationId 
AND YEAR(c.[CheckIn]) = 2021 
AND MONTH(c.[CheckIn]) = 1 
AND DAY(c.[CheckIn]) = 1
AND YEAR(c2.[CheckIn]) = 2021 
AND MONTH(c2.[CheckIn]) = 1 
AND DAY(c2.[CheckIn]) = 1 
AND befam.UserId1 = c.UserId 
AND befam.UserId2 = c2.UserId 
AND befam.Relation='Spouse' 
AND c.UserId < c2.UserId
GROUP BY c.UserId,c2.UserId
HAVING COUNT(*) > 1


SELECT *
FROM CheckInOut
ORDER BY UserId

SELECT * 
FROM Befamily