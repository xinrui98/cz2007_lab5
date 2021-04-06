-- When a place's average rating falls below threshold, place them into risky locations table/view
USE ssr1g2
GO

DROP TRIGGER RiskyLocation
GO

CREATE TRIGGER RiskyLocation ON Rating
AFTER INSERT
AS
BEGIN
    INSERT INTO HighRiskLoc
    SELECT LocationId
    FROM Rating
    WHERE LocationId NOT IN (
        SELECT LocationID
        FROM HighRiskLoc
    )
    GROUP BY LocationId
    HAVING AVG(Rate) < 3 
END
GO

-- --Test: Insert ratings with loc1 avg of 8, loc2 avg of 2
-- --Result: loc2 will aappead in RiskyLocation
-- INSERT INTO Rating
-- VALUES
-- (
--     'user3', 
--     'loc1',
--     '2021-03-01 00:01:00',
--     8,
--     'Awesome'
-- ),
-- (
--     'user0',
--     'loc2',
--     '2021-03-01 00:02:00',
--     1,
--     NULL
-- ),
-- (
--     'user1',
--     'loc2',
--     '2021-03-02 00:01:00',
--     3,
--     'Acceptable but not great'
-- )
-- GO

-- SELECT * FROM Rating
-- SELECT * FROM HighRiskLoc
-- GO