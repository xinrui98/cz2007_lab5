CREATE TABLE Befamily
(
    UserId1 [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserId), 
    UserId2 [VARCHAR](255) FOREIGN KEY REFERENCES [User](UserId),
    Relation [VARCHAR](255) NOT NULL,
    CONSTRAINT UserPair PRIMARY KEY (UserId1, UserId2),
    CONSTRAINT not_equal CHECK (UserId1 <> UserId2)
);
GO

SELECT * FROM Befamily