CREATE TRIGGER protect_ratings ON Rating
INSTEAD OF UPDATE
AS
BEGIN
    IF UPDATE(UserID) RAISERROR('Not allowed to change UserID', 18, 50000)
    IF UPDATE(LocationID) RAISERROR('Not allowed to change LocationID', 18, 50000)
    IF UPDATE(CheckIn) RAISERROR('Not allowed to change Check In time', 18, 50000)
    IF UPDATE(Rate) RAISERROR('Not allowed to change Rating', 18, 50000)
END