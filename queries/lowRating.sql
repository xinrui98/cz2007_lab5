-- Find out what company is responsible for a location 
-- with low average rating and find the rating

USE ssr1g2
GO

SELECT C.CompanyID, AVG(CAST(Rate AS FLOAT)) AS ave_rate
FROM 
    (Associate A JOIN Rating R
        ON A.LocationID = R.LocationId)
    JOIN Company C
        ON C.CompanyID = A.CompanyID
WHERE
    A.LocationID in (SELECT LocationId
         FROM Rating
         GROUP BY LocationID
         HAVING AVG(Rate) < 3)
GROUP BY C.CompanyID
ORDER BY ave_rate 
GO
    
SELECT * FROM Rating
SELECT * FROM Associate
SELECT * FROM [Location.ID]

-- SELECT * FROM HighRiskLoc

-- INSERT INTO Rating
-- VALUES ('03', '04', GETDATE(), 1, 'THis place is bad')

SELECT * FROM Rating
DELETE FROM HighRiskLoc

-- SELECT * FROM HighRiskLoc