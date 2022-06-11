CREATE DATABASE Informatica;
USE Informatica;

CREATE TABLE Fornecedores (
Cod_Fornec SMALLINT PRIMARY KEY,
Nome_Fornec VARCHAR(50)
);

CREATE TABLE Produtos (
ID_Prod SMALLINT PRIMARY KEY,
Nome_Prod VARCHAR(50) NOT NULL,
Quant_Prod SMALLINT NOT NULL,
Preco_Prod DECIMAL(10,2),
Cod_Fornec SMALLINT,
CONSTRAINT fk_cod_fornec FOREIGN KEY (Cod_Fornec)
REFERENCES Fornecedores (Cod_Fornec)
);

INSERT INTO Fornecedores (Cod_Fornec, Nome_Fornec)
VALUES(1,"Acme");

INSERT INTO Produtos
VALUES (100, "Monitor LCD", 12,550.00, 1),
(101, "Roteador Banda Larga", 8, 130.00, 1),
(102, "teclado", 15, 40.00, 1),
(103, "Pendrive 64GB", 22, 48.00, 1),
(104, "Webcam", 6, 170.00, 1);

SELECT Nome_Fornec FROM Fornecedores;
SELECT Nome_Prod, Preco_Prod FROM Produtos;
SELECT * FROM Produtos;

SELECT Nome_Prod FROM Produtos
WHERE ID_Prod = 101;

UPDATE Produtos
SET Preco_Prod = 650.00
WHERE ID_Prod = 100;

SELECT Preco_Prod FROM Produtos
WHERE ID_Prod = 101;

DELETE FROM Produtos
WHERE ID_Prod = 101;

SELECT Nome_Prod FROM Produtos
WHERE ID_Prod = 101;

SELECT Nome_Prod, Nome_Fornec
FROM Fornecedores
INNER JOIN Produtos 
ON Fornecedores.Cod_Fornec = Produtos.Cod_Fornec;

SELECT Nome_Prod, Preco_Prod
FROM Produtos
ORDER BY Nome_Prod;
SELECT * FROM Produtos;
