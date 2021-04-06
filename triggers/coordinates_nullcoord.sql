-- When coordinates are updated with null, default to previous location
USE ssr1g2
GO

DROP TRIGGER NullCoord
GO

CREATE TRIGGER NullCoord ON Coordinates
AFTER INSERT
AS
BEGIN
    UPDATE  T2

    SET     T2.x = T3.x

    FROM    (SELECT C2.UserId, C1.[Timestamp], MAX(C2.[Timestamp]) as LastTime
            FROM Coordinates C1, Coordinates C2
            WHERE C1.x IS NULL AND
                C2.x IS NOT NULL AND
                C2.[Timestamp] <= C1.[Timestamp] AND
                C2.UserId = C1.UserId
            GROUP BY C2.UserId, C1.[Timestamp]
            ) AS T1,
            Coordinates AS T2,
            Coordinates AS T3

    WHERE T2.UserId = T1.UserId AND 
        T1.[Timestamp] = T2.[Timestamp]
        AND T1.LastTime = T3.[Timestamp]


    UPDATE  T2

    SET     T2.y = T3.y

    FROM    (SELECT C2.UserId, C1.[Timestamp], MAX(C2.[Timestamp]) as LastTime
            FROM Coordinates C1, Coordinates C2
            WHERE C1.y IS NULL AND
                C2.y IS NOT NULL AND
                C2.[Timestamp] <= C1.[Timestamp] AND
                C2.UserId = C1.UserId
            GROUP BY C2.UserId, C1.[Timestamp]
            ) AS T1,
            Coordinates AS T2,
            Coordinates AS T3

    WHERE T2.UserId = T1.UserId AND 
        T1.[Timestamp] = T2.[Timestamp]
        AND T1.LastTime = T3.[Timestamp]

END
GO
    -- UPDATE Coordinates
    -- SET y = T1.y
    -- FROM
    -- (SELECT y, [Timestamp], UserId
    -- FROM Coordinates
    -- WHERE y IS NOT NULL) AS T1
    -- WHERE Coordinates.UserId = T1.UserId
    -- AND Coordinates.y IS NULL
    -- AND T1.[Timestamp] = 
    -- (SELECT MAX(Timestamp) FROM Coordinates
    -- WHERE T1.[Timestamp] < Coordinates.[Timestamp])

--Test: Insert user with temperature > 37.5. 
--Result: UserId will appear in HighRisk

-- TRUNCATE TABLE Coordinates

-- INSERT INTO Coordinates
-- VALUES
-- (
--     'user3', '2021-03-01 00:01:00', 100, 150
-- ),
-- (
--     'user3', '2021-04-01 00:02:00', 200, 200
-- ),
-- (
--     'user3', '2021-05-01 00:03:00', NULL, NULL
-- )
-- GO

-- SELECT * FROM Coordinates
-- GO