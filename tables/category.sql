CREATE TABLE Category (
    name VARCHAR(255) PRIMARY KEY,
    containedBy VARCHAR(255),
    CONSTRAINT CHK_SelfRefer CHECK(name<>containedBy)
)
GO

CREATE TRIGGER InvalidParentInsert ON [Category]
    INSTEAD OF INSERT
    AS
BEGIN
    -- If all parents are NULL then just insert
    IF NOT EXISTS (SELECT * FROM inserted AS I
                    WHERE I.containedBy IS NOT NULL)
    BEGIN
        INSERT INTO [Category]
        SELECT * FROM inserted
        RETURN;
    END

    -- check if parent exists in table or other entries
    DECLARE @allNames Table (name VARCHAR(255));
    INSERT INTO @allNames SELECT name FROM 
    (
        (SELECT name FROM [Category]) UNION 
        (SELECT name FROM inserted)
    ) AS U WHERE name IS NOT NULL;
    
    IF EXISTS 
    ((
        SELECT containedBy FROM inserted
        WHERE containedBy IS NOT NULL
        )
        EXCEPT
        SELECT * FROM @allNames
    )
    BEGIN
        RAISERROR('Parent Category does not exist', 18, 50000)
        RETURN;
    END


    -- PRINT 'ok'
    -- DECLARE @len INT
    -- SET @len=(SELECT COUNT(*) FROM Category);
    -- PRINT(@len)
    INSERT INTO Category SELECT * FROM inserted;
    -- SET @len=(SELECT COUNT(*) FROM Category);
    -- PRINT(@len)
    -- PRINT'ok2'
    RETURN;
END
GO

SELECT * FROM [Category]
GO
