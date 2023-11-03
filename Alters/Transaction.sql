use CemDatabase

CREATE TABLE [Transaction] (
    [Id] int PRIMARY KEY IDENTITY,
    [Description] varchar(200) NOT NULL,
    [Amount] varchar(200) NOT NULL,
    [TransactionType] int NOT NULL,   
    [CategoryId] int FOREIGN KEY REFERENCES dbo.Category(Id) 
)
