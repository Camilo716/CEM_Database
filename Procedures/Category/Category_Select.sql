CREATE OR ALTER PROCEDURE [dbo].[Category_Select]
    @Name VARCHAR(100) = NULL
AS 
BEGIN TRANSACTION
    DECLARE @where nvarchar(MAX) = 'AND (Category.Name = @Name OR @Name IS NULL)'

    DECLARE @query nvarchar(MAX) = 
    CONCAT(
        'SELECT *
        FROM [dbo].[Category]
        WHERE 1=1', 
        @where
    )

    EXEC SP_EXECUTESQL @query,
        N'@Name VARCHAR(100)',
        @Name 
COMMIT