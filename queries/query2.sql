-- Find the companies whose posts have received 
-- the most number of comments 
-- for each week of the past month.


SELECT CompanyId, T1.WeeksAgo
FROM (
    SELECT A.CompanyID, COUNT(*) as NumComments, DATEDIFF(week, C.Timestamp, CAST(GETDATE() AS date)) AS WeeksAgo
    FROM Comment C, [Message] M, Associate A
    WHERE C.MessageID = M.MessageID 
    AND DATEDIFF(week, C.Timestamp, CAST(GETDATE() AS date)) <= 4
    AND M.LocationID = A.LocationID
    GROUP BY A.CompanyID, DATEDIFF(week, C.Timestamp, CAST(GETDATE() AS date))
    ) AS T1,
    (
    SELECT MAX(NumComments) AS MaxNumComments, WeeksAgo
    FROM (
    SELECT A.CompanyID, COUNT(*) as NumComments, DATEDIFF(week, C.Timestamp, CAST(GETDATE() AS date)) AS WeeksAgo
    FROM Comment C, [Message] M, Associate A
    WHERE C.MessageID = M.MessageID 
    AND DATEDIFF(week, C.Timestamp, CAST(GETDATE() AS date)) <= 4
    AND M.LocationID = A.LocationID
    GROUP BY A.CompanyID, DATEDIFF(week, C.Timestamp, CAST(GETDATE() AS date))
    ) AS T
    GROUP BY WeeksAgo
    ) AS T2
WHERE T1.NumComments = T2.MaxNumComments
AND T1.WeeksAgo = T2.WeeksAgo

SELECT * FROM Comment
ORDER BY [Timestamp]