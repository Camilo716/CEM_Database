IF NOT EXISTS(SELECT * FROM SYSOBJECTS WHERE TYPE = 'U' AND NAME = 'Transaction')
BEGIN
    CREATE TABLE [dbo].[Category] (
        [Id] int PRIMARY KEY IDENTITY,
        [Name]  varchar(100) NOT NULL
    );
END
