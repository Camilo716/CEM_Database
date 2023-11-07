CREATE OR ALTER PROCEDURE [dbo].[MonthlyBalanceReport]
AS
BEGIN TRANSACTION
    SELECT 
        [Category].[Name] AS Category,
        SUM(CASE WHEN [Transaction].[TransactionType] = 0 THEN [Transaction].[Amount] ELSE 0 END) AS Earned,
        SUM(CASE WHEN [Transaction].[TransactionType] = 1 THEN [Transaction].[Amount] ELSE 0 END) AS Spent
    FROM [Transaction]
        RIGHT JOIN [Category]
            ON [Category].[Id] = [Transaction].[CategoryId]
    GROUP BY 
        [Transaction].[CategoryId],
        [Category].[Name]
COMMIT