-- Questão 1:

USE `empresa`;
UPDATE `cliente`
SET `telefone` = '48998765432'
WHERE `cpf` = '111.111.111-11';

-- Questão 2:

USE `empresa`;
UPDATE `empregado`
SET `cargo` = 'Desenvolvedor Sênior'
WHERE `cpf` = '333.333.333-33';

-- Questão 3:

USE `empresa`;
DELETE FROM `cliente`
WHERE `cpf` = '555.555.555-55';

-- Questão 4:

USE `empresa`;
UPDATE `projeto`
SET `preco` = `preco` * 1.10

-- Questão 5:

USE `empresa`;
DELETE FROM `projEmp`
WHERE `cpfEmpregado` = '333.333.333-33'
  AND `codProj` = 2;

-- Questão 6:

USE `empresa`;
UPDATE `projeto`
SET `descricao` = CONCAT('PROJETO LEGADO - ', `descricao`) -- concatenar a string "PROJETO LEGADO - " com a descrição atual do projeto
WHERE `dtSolicitacao` < '2025-09-15'; -- atualizar apenas os projetos que a data de solicitação seja anterior a 15/09/2025

-- Questão 7:

USE `empresa`;
UPDATE `projEmp`
SET `hrTrab` = `hrTrab` + 15 -- adicionar 15 horas a hrTrab
WHERE `cpfEmpregado` = '666.666.666-66'
  AND `codProj` = 3; -- atualizar apenas o registro do empregado com cpf '666.666.666-66' e codProj 3

-- Questão 8:

USE `empresa`;
DELETE FROM `projEmp`
WHERE `codProj` IN (
    SELECT `codProj`
    FROM `projeto`
    WHERE `preco` < 6000.00); -- deleta registros da tabela projEmp que tem codProj de projeto com preço menor que 6000

DELETE FROM `projeto` -- deleta registros da tabela projeto com preço menor que 6000
WHERE `preco` < 6000.00;

-- Questão 9:

USE `empresa`;
UPDATE `projeto`
SET `dtEstimada` = DATE_ADD(`dtEstimada`, INTERVAL 7 DAY) -- adicionar 7 dias a dtEstimada
WHERE `cpfGerente` = '444.444.444-44';

-- Questão 10:

USE `empresa`;
INSERT INTO `empregado` (`cpf`, `nome`, `cargo`)
VALUES (`999.999.999-99`, `empregado teste`, `cargo teste`);

DELETE FROM `empregado`
WHERE `cpf` = '999.999.999-99';

-- Questão 11:

USE `empresa`;
UPDATE `empregado`
SET `cargo` = 'Gerente de projetos' -- SET serve para atualizar o cargo do empregado
WHERE `cpf`= '333.333.333-33';

UPDATE `projeto`
WHERE `cpfGerente` = '333.333.333-33'
WHERE `cpfCliente` = `222.222.222-22`;

-- Questão 12:

USE `empresa`;
-- Questão 12:

USE `empresa`;
DELETE FROM `projEmp` -- deleta registros da tabela projEmp que tem codProj de projeto com data de fim anterior a data atual e cpfCliente diferente de '111.111.111-11'
WHERE `codProj` IN (
    SELECT `codProj`
    FROM `projeto`
    WHERE `dtFim` < CURDATE() ---CURDATE() mostra a data atual
      AND `cpfCliente` <> '111.111.111-11');

DELETE FROM `projeto` -- deleta da tabela projetos com data de fim anterior a data atual e cpfCliente diferente de '111.111.111-11'
WHERE `dtFim` < CURDATE()
  AND `cpfCliente` <> '111.111.111-11';