-- PASSO 1:

-- 1 - Listar todas as informações da tabela Animais.
SELECT * FROM `Animais`;

-- 2 - Listar apenas o nome, email e cidade de todos os Tutores
SELECT `nome`, `email`, `cidade` FROM `Tutores`;

-- 3 - Listar o nome e a especialidade de todos os Veterinarios
SELECT `nome`, `especialidade` FROM `Veterinarios`;

-- 4 - Listar apenas o motivo e o custo de todas as Consultas
SELECT `motivo`, `custo` FROM `Consultas`;


-- PASSO 2:

-- 5 - Listar todos os dados dos animais que são da espécie 'Gato'
SELECT * FROM `Animais`
WHERE `especie` = 'Gato';

-- 6 - Listar o nome e o peso_kg dos animais que pesam mais de 20 kg
SELECT `nome`, `peso_kg` FROM `Animais`
WHERE `peso_kg` > 20;

-- 7 - Listar todas as consultas que custaram exatamente R$ 150,00
SELECT * FROM `Consultas`
WHERE `custo` = 150.00;

-- 8 - Listar o nome e dtNascimento dos animais nascidos a partir de 1º de Janeiro de 2022 (inclusive)
SELECT `nome`, `dtNascimento` FROM `Animais`
WHERE `dtNascimento` >= '2022-01-01';

-- 9 - Listar o nome e a raca dos animais que não são da raça 'Labrador'
SELECT `nome`, `raca` FROM `Animais`
WHERE `raca` <> 'Labrador';


-- PASSO 3:

-- 10 - Listar todos os animais da espécie 'Cachorro' E que pesam menos de 10 kg
SELECT * FROM `Animais`
WHERE `especie` = 'Cachorro'
  AND `peso_kg` < 10;

-- 11 - Listar todas as consultas que ocorreram no ano de 2025 E custaram mais de R$ 180,00
SELECT * FROM `Consultas`
WHERE `dtConsulta` >= '2025-01-01'
  AND `dtConsulta` < '2026-01-01'
  AND `custo` > 180.00;

-- 12 - Listar todos os animais que são da espécie 'Cachorro' OU da espécie 'Gato'.
SELECT * FROM `Animais`
WHERE `especie` = 'Cachorro'
   OR `especie` = 'Gato';

-- 13 - Listar todos os tutores que moram em 'São Paulo' OU 'Rio de Janeiro'.
SELECT * FROM `Tutores`
WHERE `cidade` = 'São Paulo'
   OR `cidade` = 'Rio de Janeiro';

-- 14 - Listar todos os animais que são ('Cachorro' E pesam mais de 30kg) OU ('Gato' E pesam menos de 5kg).
SELECT * FROM `Animais`
WHERE (`especie` = 'Cachorro' AND `peso_kg` > 30)
   OR (`especie` = 'Gato' AND `peso_kg` < 5);


-- PASSO 4:

-- 15 - Listar o nome e o telefone dos tutores cujo nome começa com a letra 'A'.
SELECT `nome`, `telefone` FROM `Tutores`
WHERE `nome` LIKE 'A%';

-- 16 - Listar o nome e a raca dos animais cuja raça contenha a palavra 'Retriever'.
SELECT `nome`, `raca` FROM `Animais`
WHERE `raca` LIKE '%Retriever%';

-- 17 - Listar o nome, email e cidade dos tutores que moram em 'Belo Horizonte', 'Florianópolis' ou 'Porto Alegre' (Use o operador IN).
SELECT `nome`, `email`, `cidade` FROM `Tutores`
WHERE `cidade` IN ('Belo Horizonte', 'Florianópolis', 'Porto Alegre');

-- 18 - Listar o nome (do animal) e o custo das consultas que custaram entre R$ 100,00 e R$ 200,00 (Use o operador BETWEEN).
SELECT `Animais`.`nome`, `Consultas`.`custo` FROM `Animais`
INNER JOIN `Consultas`
    ON `Animais`.`idAnimal` = `Consultas`.`idAnimal_fk`
WHERE `Consultas`.`custo` BETWEEN 100.00 AND 200.00;

-- 19 - Listar todos os animais que não têm observações cadastradas (onde a coluna obs é nula).
SELECT * FROM `Animais`
WHERE `obs` IS NULL;

-- 20 - Listar todas as consultas que já possuem um diagnóstico preenchido (onde a coluna diagnostico não é nula).
SELECT * FROM `Consultas`
WHERE `diagnostico` IS NOT NULL;