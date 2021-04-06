--  Find the locations that receive 
-- at least 5 ratings of “5” in Dec 2020, 
-- and order them by their average ratings. 

SELECT [Location.ID].LocationId, [Location.ID].name, AVG(CAST(Rating.Rate AS FLOAT)) AS AvergeRating
FROM [Location.ID], Rating
WHERE [Location.ID].LocationId = Rating.LocationId AND
    [Location.ID].LocationId IN (SELECT LocationId
    FROM Rating
    WHERE Rating.Rate = 5 AND
        MONTH(Rating.CheckIn) = 12 AND
        YEAR(Rating.CheckIn) = 2020
    GROUP BY LocationId
    HAVING COUNT(*) >= 5)
GROUP BY [Location.ID].LocationId, name
ORDER BY AVG(CAST(Rating.Rate AS FLOAT)) DESC
GO

SELECT * FROM dbo.Rating
ORDER BY LocationId;