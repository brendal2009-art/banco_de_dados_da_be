DROP DATABASE `loja_eletronicos`;

CREATE DATABASE `loja_eletronicos`;

USE `loja_eletronicos`;

CREATE TABLE `categorias` (
`idCategoria` INT AUTO_INCREMENT PRIMARY KEY,
`nome` VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE `produtos` (
`idProduto` INT AUTO_INCREMENT PRIMARY KEY,
`nome` VARCHAR(150) NOT NULL,
`fabricante` VARCHAR(100),
`preco` DECIMAL(10, 2) NOT NULL,
`estoque` INT DEFAULT 0,
`idCategoria_fk` INT,
`dtCadastro` DATE,
FOREIGN KEY (`idCategoria_fk`) REFERENCES `categorias`(`idCategoria`)
);

INSERT INTO `categorias` (`nome`) VALUES
('Notebooks'), -- ID 1
('Smartphones'), -- ID 2
('Periféricos'), -- ID 3
('Monitores'); -- ID 4

INSERT INTO `produtos` (`nome`, `fabricante`, `preco`, `estoque`, `idCategoria_fk`, `dtCadastro`) VALUES
('Laptop Pro', 'TechCorp', 4500.00, 15, 1, '2024-01-10'),
('Smartphone X', 'MobileInc', 3200.00, 30, 2, '2024-02-15'),
('Mouse Gamer', 'GamerGear', 250.00, 100, 3, '2024-03-05'),
('Teclado Mecânico', 'GamerGear', 450.00, 50, 3, '2024-03-05'),
('Monitor UltraWide', 'ViewMax', 1800.00, 20, 4, '2024-01-20'),
('Laptop Gamer', 'TechCorp', 6500.00, 10, 1, '2024-02-25'),
('Smartphone Y', 'MobileInc', 1900.00, 40, 2, '2024-04-10'),
('Webcam HD', 'Perifex', 150.00, 0, 3, '2024-05-01'),
('Mouse Pad', NULL, 50.00, 200, 3, '2024-03-06'),
('Monitor 4K', 'ViewMax', 2700.00, 12, 4, '2024-05-15');

-- Exercícios com INNER JOIN (O Básico) --

-- 1 -  Listar Produto e Categoria: Mostre o nome de cada produto ao lado do nome da sua respectiva categoria.
SELECT 
    p.nome AS `Produto`,  -- Nome do Produto
    c.nome AS `Categoria` -- Nome da Categoria
FROM produtos p -- p serve como apelido para a tabela produtos, produtos é a tabela principal
INNER JOIN categorias c -- c serve como apelido para a tabela categorias, categorias é a tabela secundária
    ON p.idCategoria_fk = c.idCategoria; -- ON = condição de junção, idCategoria_fk da tabela produtos deve ser igual ao idCategoria da tabela categorias

-- 2 - Filtrar por Categoria Específica: Mostre o nome e o preço apenas dos produtos que pertencem à categoria 'Periféricos'.
SELECT 
    p.nome AS `Produto`,
    p.preco AS `Preço` 
FROM produtos p
INNER JOIN categorias c
    ON p.idCategoria_fk = c.idCategoria
WHERE c.nome = 'Periféricos'; -- WHERE = condição de filtro, nome da categoria deve ser igual a 'Periféricos'

-- 3 - Filtrar por Fabricante e Categoria: Mostre o nome e o fabricante apenas dos produtos da categoria 'Notebooks'.
SELECT
    p.nome AS `Produto`,
    p.fabricante AS `Fabricante`
FROM produtos p
INNER JOIN categorias c
    ON p.idCategoria_fk = c.idCategoria
WHERE c.nome = 'Notebooks';

-- 4 - Listar Produtos com Preço Alto: Mostre o nome do produto, o nome da categoria e o preço dos produtos que custam mais de R$ 2000,00.
SELECT
    p.nome AS `Produto`,
    c.nome AS `Categoria`,
    p.preco AS `Preço` -- p.preco = preço do produto, c.nome = nome da categoria
FROM produtos p -- p serve como apelido para a tabela produtos, produtos é a tabela principal
INNER JOIN categorias c
    ON p.idCategoria_fk = c.idCategoria -- o idCategoria_fk da tabela produtos deve ser igual ao idCategoria da tabela categorias
WHERE p.preco > 2000.00; -- WHERE = condição de filtro, preço do produto deve ser maior que 2000.00