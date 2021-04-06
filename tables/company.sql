USE ssr1g2
GO

DROP TABLE [Company]
GO

CREATE TABLE [Company] (
    CompanyID VARCHAR(255) PRIMARY KEY,
    MailingAddress VARCHAR(255),
    Email VARCHAR(255),
    CONSTRAINT CHK_Contactable CHECK (MailingAddress IS NOT NULL OR Email IS NOT NULL)
)
GO

DELETE FROM [Company]
GO

-- INSERT INTO [Company]
-- VALUES 
--     ('coy1', 'mailc1', NULL),
--     ('coy2', NULL, 'emailc2'),
--     ('coy3', 'mailc3', 'emailc3')

SELECT * FROM [Company]