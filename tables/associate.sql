CREATE TABLE [Associate] (
    CompanyID VARCHAR(255) FOREIGN KEY 
        REFERENCES [Company](CompanyID) DEFAULT '00',
    LocationID VARCHAR(255) FOREIGN KEY
        REFERENCES [LOCATION.ID](LocationId),
    PRIMARY KEY (CompanyID, LocationID)
)
GO

-- SELECT * FROM [Associate]