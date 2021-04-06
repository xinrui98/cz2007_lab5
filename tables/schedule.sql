USE ssr1g2
GO

IF OBJECT_ID('Schedule', 'U') IS NOT NULL
DROP TABLE [Schedule]
GO

DROP FUNCTION dbo.IsClinicLocation
GO

CREATE FUNCTION dbo.IsClinicLocation(@loc AS [VARCHAR](255))
RETURNS INT
AS BEGIN
    RETURN(
    SELECT 
        CASE
        WHEN EXISTS(SELECT * FROM Has WHERE LocationID = @loc AND 
        (CategoryName = 'Clinic' OR CategoryName = 'Hospital' OR CategoryName = 'Polyclinic'))
            THEN 1
        ELSE 0
    END
    )
END

GO

-- Create the table in the specified schema
CREATE TABLE [Schedule]
(
    UserId [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserID), -- primary key column
    Datetime [DATETIME] NOT NULL,
    ClinicId [VARCHAR](255) FOREIGN KEY REFERENCES [Location.ID](LocationID) NOT NULL,
    TestResult [BIT],
    CONSTRAINT IsClinic CHECK (dbo.IsClinicLocation(ClinicId) = 1),
    PRIMARY KEY (UserId, DateTime)
    -- specify more columns here
);
GO

SELECT * FROM Schedule