CREATE TABLE CheckInOut
(
    UserId [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserID),
    LocationId [VARCHAR](255) FOREIGN KEY REFERENCES [Location.ID](LocationId),
    CheckIn [DATETIME] NOT NULL,
    CheckOut [DATETIME],
    CONSTRAINT UserIn PRIMARY KEY (UserId, CheckIn)
);
GO

SELECT * FROM CheckInOut