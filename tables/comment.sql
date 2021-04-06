CREATE TABLE [Comment] (
    UserID VARCHAR(255) FOREIGN KEY 
        REFERENCES [User](UserID),
    MessageID VARCHAR(255) FOREIGN KEY
        REFERENCES [Message](MessageID),
    Timestamp DATETIME NOT NULL,
    Text VARCHAR(255),
    CONSTRAINT PK_CommentKey PRIMARY KEY (UserID, Timestamp)
)
GO