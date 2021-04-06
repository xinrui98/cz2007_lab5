-- Find 5 locations ids and their names 
-- that are checked in by the most number of users 
-- in the last 10 days

SELECT TOP 5
L.LocationId, L.Name, COUNT(DISTINCT C.UserId) as NumUser
FROM [Location.ID] L, CheckInOut C
-- Joins the two tables on LocationId
WHERE L.LocationId = C.LocationId
-- Within the past 10 days
AND C.CheckIn <= GETDATE()
AND C.CheckIn >= DATEADD(day, -10, GETDATE())
GROUP BY L.LocationId, L.Name
ORDER BY NumUser DESC


SELECT LocationId, COUNT(DISTINCT UserId) AS Count
FROM CheckInOut
WHERE CheckIn >= DATEADD(day, -10, GETDATE())
AND CheckIn <= GETDATE()
GROUP BY LocationId
ORDER BY COUNT(DISTINCT UserId) DESC

