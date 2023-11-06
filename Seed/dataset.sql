-- INSERT para la tabla Category
INSERT INTO Category (Name) VALUES ('Comida');
INSERT INTO Category (Name) VALUES ('Ropa');
INSERT INTO Category (Name) VALUES ('Tecnología');
INSERT INTO Category (Name) VALUES ('Deportes');
INSERT INTO Category (Name) VALUES ('Electrodomésticos');
INSERT INTO Category (Name) VALUES ('Libros');
INSERT INTO Category (Name) VALUES ('Salud');
INSERT INTO Category (Name) VALUES ('Joyería');
INSERT INTO Category (Name) VALUES ('Viajes');
INSERT INTO Category (Name) VALUES ('Automóviles');

-- INSERT para la tabla Transaction
-- 30 transacciones ficticias
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Compra de alimentos', 50.25, 0, 1);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Camiseta nueva', 20.99, 0, 2);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Smartphone', 499.99, 0, 3);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Zapatillas deportivas', 75.50, 0, 4);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Lavadora', 399.00, 0, 5);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Libro de ciencia ficción', 12.99, 0, 6);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Consulta médica', 80.00, 0, 7);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Anillo de diamantes', 1500.00, 0, 8);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Billetes de avión', 600.00, 0, 9);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Pago del seguro del automóvil', 300.00, 0, 10);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de salario', 2500.00, 1, 11);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Venta de antigüedades', 800.00, 1, 12);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de alquiler', 1200.00, 1, 13);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de inversión', 400.00, 1, 14);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de bonificación', 300.00, 1, 15);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Gasto de entretenimiento', 50.00, 0, 16);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Compra de muebles', 400.00, 0, 17);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de reembolso', 75.00, 1, 18);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Gasto de transporte', 30.00, 0, 19);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de regalos', 100.00, 1, 20);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Gasto de educación', 200.00, 0, 21);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de devolución de impuestos', 500.00, 1, 22);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Gasto de salud', 75.00, 0, 23);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de venta de arte', 700.00, 1, 24);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Gasto de seguro médico', 120.00, 0, 25);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de dividendos', 150.00, 1, 26);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Gasto de reparación de coche', 60.00, 0, 27);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Gasto de impuestos', 300.00, 0, 28);
INSERT INTO Transaction (Description, Amount, TransactionType, CategoryId) VALUES ('Ingreso de venta de electrónicos', 450.00, 1, 29);