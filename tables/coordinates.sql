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