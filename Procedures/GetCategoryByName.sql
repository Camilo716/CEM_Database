CREATE OR ALTER PROCEDURE [dbo].[GetCategoryByName]
    @CategoryName VARCHAR(100)
AS 
BEGIN TRANSACTION
    SELECT *
    FROM [dbo].[Category]
    WHERE [Category].[Name] = @CategoryName
COMMIT
