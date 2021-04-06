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