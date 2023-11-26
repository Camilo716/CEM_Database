CREATE OR ALTER PROCEDURE [dbo].[Transaction_Insert]
    @Description VARCHAR(200),
    @Amount float,
    @TransactionType int,
    @Date date,
    @CategoryId int
AS 
BEGIN TRANSACTION
    INSERT INTO [Transaction] ([Description], [Amount], [TransactionType], [Date], [CategoryId])
    VALUES (
        @Description,
        @Amount,
        @TransactionType,
        @Date,
        @CategoryId
    );
COMMIT