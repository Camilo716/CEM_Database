CREATE OR ALTER PROCEDURE [dbo].[Category_Insert]
    @Name VARCHAR(100)
AS 
BEGIN TRANSACTION
    INSERT INTO [Category] ([Name])
    VALUES
    (@Name)
COMMIT

