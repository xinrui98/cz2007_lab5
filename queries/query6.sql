-- Given a user, find the list of users that 
-- checked in the same locations with the user 
-- within 1 hour in the last week

SELECT DISTINCT A.UserId
FROM CheckInOut A, CheckInOut B
WHERE A.LocationId = B.LocationId
AND B.UserId = '01'
AND B.UserId <> A.UserId
-- Within 1 hour of 01's check-in
AND B.CheckIn <= DATEADD(hour, 1, A.CheckIn)
AND B.CheckIn >= DATEADD(hour, -1, A.CheckIn)
-- In the past 7 days
AND B.CheckIn >= DATEADD(day, -7, GETDATE())
AND B.CheckIn <= GETDATE()


SELECT * FROM CheckInOut