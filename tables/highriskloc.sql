CREATE TABLE HighRiskLoc
(
    LocationId [VARCHAR](255) FOREIGN KEY REFERENCES [Location.ID](LocationId) PRIMARY KEY
);
GO
SELECT * FROM HighRiskLoc