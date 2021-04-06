USE ssr1g2
GO

IF OBJECT_ID('Temperature', 'U') IS NOT NULL
DROP TABLE [Temperature]
GO
-- Create the table in the specified schema
CREATE TABLE [Temperature]
(
    UserId [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserID), -- primary key column
    Timestamp [DATETIME] NOT NULL,
    Temp [FLOAT] NOT NULL,
    CONSTRAINT TempID PRIMARY KEY (UserId, Timestamp)
    -- specify more columns here
);
GO