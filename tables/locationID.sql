CREATE TABLE [Location.ID] (
    LocationId VARCHAR(255) PRIMARY KEY,
    Address VARCHAR(255) FOREIGN KEY REFERENCES [Location.Address](Address),
    Name VARCHAR(255),
    Description VARCHAR(255)
)
GO

SELECT * FROM [Location.ID]