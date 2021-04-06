USE ssr1g2
GO

DROP TRIGGER IsFamilyOf
GO

CREATE TRIGGER IsFamilyOf ON Befamily
AFTER INSERT, UPDATE, DELETE
AS 

IF EXISTS(SELECT * FROM DELETED)
BEGIN
    DELETE FROM Befamily
    WHERE EXISTS (
        SELECT UserId2, UserId1, Relation FROM DELETED D
        WHERE Befamily.UserId1 = D.UserId2 
        AND Befamily.UserId2 = D.UserId1)
END

IF EXISTS(SELECT * FROM INSERTED)
BEGIN
    INSERT INTO Befamily
    SELECT UserId2, UserId1,
    (CASE 
        WHEN INSERTED.Relation = 'Child' THEN 'Parent'
        WHEN INSERTED.Relation = 'Parent' THEN 'Child'
        WHEN INSERTED.Relation = 'Grandparent' THEN 'Grandchild'
        WHEN INSERTED.Relation = 'Grandchild' THEN 'Grandparent'
        ELSE INSERTED.Relation
    END)
    FROM INSERTED
END

GO