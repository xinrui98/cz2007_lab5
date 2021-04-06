CREATE TABLE [HighRisk]
(
    UserId [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserID) PRIMARY KEY, -- primary key column
);
GO

SELECT * FROM HighRisk;