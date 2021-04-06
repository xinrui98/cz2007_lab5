USE ssr1g2
GO

IF OBJECT_ID('Coordinates', 'U') IS NOT NULL
DROP TABLE Coordinates
GO
-- Create the table in the specified schema
CREATE TABLE Coordinates
(
    UserId [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserID),
    Timestamp [DATETIME] NOT NULL,
    x [FLOAT], -- primary key column
    y [FLOAT],
    CONSTRAINT UserTime PRIMARY KEY (UserId, Timestamp)
    -- specify more columns here
);
GO

SELECT * FROM Coordinates