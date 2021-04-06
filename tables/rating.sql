-- Create the table in the specified schema
CREATE TABLE Rating
(
    UserId [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserID),
    LocationId [VARCHAR](255) FOREIGN KEY REFERENCES [Location.ID](LocationId),
    CheckIn [DATETIME] NOT NULL,
    Rate [INT],
    Review [VARCHAR](255),
    CONSTRAINT UserCheckIn PRIMARY KEY (UserId, CheckIn)
    -- specify more columns here
);
GO