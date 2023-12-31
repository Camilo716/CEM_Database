IF NOT EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE = 'U' AND NAME = 'Transaction')
BEGIN
    CREATE TABLE [dbo].[Transaction] (
        [Id] int PRIMARY KEY IDENTITY,
        [Description] varchar(200) NOT NULL,
        [Amount] float NOT NULL,
        [TransactionType] int NOT NULL,   
        [Date] date NOT NULL, 
        [CategoryId] int FOREIGN KEY REFERENCES dbo.Category(Id) 
    )
END