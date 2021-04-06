USE ssr1g2
GO

IF OBJECT_ID('User', 'U') IS NOT NULL
DROP TABLE [User]
GO

-- Create the table in the specified schema
CREATE TABLE [User]
(
    UserId [VARCHAR](255) NOT NULL PRIMARY KEY,
    Email [VARCHAR](255) NOT NULL,
    Name [VARCHAR](255) NOT NULL,
    Sex [VARCHAR](255),
    Birthday [DATE],
    PhoneNumber [INT],
    CompanyId [VARCHAR](255) FOREIGN KEY REFERENCES [Company](CompanyID) NOT NULL,
    IsAdmin [BIT] NOT NULL,
    IsContactPerson [BIT] NOT NULL,
    -- specify more columns here
);
GO