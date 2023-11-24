-- Variables to store Category IDs
DECLARE @CategoryId1 INT, @CategoryId2 INT, @CategoryId3 INT, @CategoryId4 INT, @CategoryId5 INT,
        @CategoryId6 INT, @CategoryId7 INT, @CategoryId8 INT, @CategoryId9 INT, @CategoryId10 INT;

-- Insert categories and save their IDs
INSERT INTO [Category] ([Name]) VALUES ('Comida');
SET @CategoryId1 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Ropa');
SET @CategoryId2 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Tecnología');
SET @CategoryId3 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Deportes');
SET @CategoryId4 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Electrodomésticos');
SET @CategoryId5 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Libros');
SET @CategoryId6 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Salud');
SET @CategoryId7 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Joyería');
SET @CategoryId8 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Viajes');
SET @CategoryId9 = SCOPE_IDENTITY();

INSERT INTO [Category] ([Name]) VALUES ('Automóviles');
SET @CategoryId10 = SCOPE_IDENTITY();

-- Insert transactions related to the categories
INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Compra de alimentos', 50.25, 0, '2023-11-01', @CategoryId1);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Camiseta nueva', 20.99, 0, '2023-11-02', @CategoryId2);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Smartphone', 499.99, 0, GETDATE(), @CategoryId3);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Zapatillas deportivas', 75.50, 0, GETDATE(), @CategoryId4);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Lavadora', 399.00, 0, GETDATE(), @CategoryId5);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Libro de ciencia ficción', 12.99, 0, GETDATE(), @CategoryId6);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Consulta médica', 80.00, 0, GETDATE(), @CategoryId7);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Ingreso de salario', 2500.00, 1, GETDATE(), @CategoryId8);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Venta de antigüedades', 800.00, 1, GETDATE(), @CategoryId9);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Ingreso de alquiler', 1200.00, 1, GETDATE(), @CategoryId10);

INSERT INTO [Transaction] (Description, Amount, TransactionType, Date, CategoryId) 
VALUES ('Ingreso de inversión', 400.00, 1, GETDATE(), @CategoryId1);