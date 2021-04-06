USE ssr1g2
GO

DROP TRIGGER Fever
GO

CREATE TRIGGER Fever ON Temperature
AFTER INSERT
AS
BEGIN 
    INSERT INTO HighRisk
    SELECT UserId
    FROM inserted as I
    WHERE I.Temp > 37.5;
END
GO

-- --Test: Insert user3 with temperature > 37.5. 
-- --Result: UserId of user3 will appear in HighRisk

-- TRUNCATE TABLE Temperature
-- TRUNCATE TABLE HighRisk

-- INSERT INTO Temperature
-- VALUES
-- (
--  'user3', '2021-03-01 00:01:00', 38.5
-- )

-- SELECT * FROM Temperature
-- SELECT * FROM HighRisk

-- GO