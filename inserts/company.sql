use ssr1g2
GO

-- Populate
INSERT INTO [Company]
VALUES 
    ('00', 'government-owned address', 'gov@gov.sg'),
    ('01', 'company01 address', 'company01@gmail.com'),
    ('02', 'company02 address', 'company02@gmail.com'),
    ('03', 'company03 address', 'company03@gmail.com')
GO

SELECT * FROM [Company]

