use ssr1g2
GO

DROP TABLE [Has]
GO

CREATE TABLE [Has] (
    LocationID VARCHAR(255) FOREIGN KEY
        REFERENCES [Location.ID](LocationID),
    CategoryName VARCHAR(255) FOREIGN KEY
        REFERENCES [Category](name)
)
GO

SELECT * FROM [Has]