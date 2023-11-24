CREATE OR ALTER PROCEDURE [dbo].[InsertCategory]
    @Name VARCHAR(100)
AS 
BEGIN TRANSACTION
    INSERT INTO [Category] ([Name])
    VALUES
    (@Name)
COMMIT

