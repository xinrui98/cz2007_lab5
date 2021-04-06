USE ssr1g2
GO

IF OBJECT_ID('HighRisk', 'U') IS NOT NULL
DROP TABLE [HighRisk]
GO

CREATE TABLE [HighRisk]
(
    UserId [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserID) PRIMARY KEY, -- primary key column
);
GO

SELECT * FROM HighRisk;