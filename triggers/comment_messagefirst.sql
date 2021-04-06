CREATE TRIGGER MessageFirst ON [Comment]
    INSTEAD OF INSERT, UPDATE
    AS
BEGIN
    IF EXISTS (
        SELECT * FROM 
        [Message] as M
        JOIN
        inserted as I
        ON I.MessageID = M.MessageID
        WHERE I.Timestamp < M.Timestamp
    )
    BEGIN
        RAISERROR('Comment Timestamp cannot be before Message Timestamp', 18, 50000)
    END

    ELSE
        INSERT INTO [Comment]
        SELECT * FROM inserted
END