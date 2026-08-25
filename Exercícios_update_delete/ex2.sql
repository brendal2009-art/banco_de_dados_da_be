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

DELETE FROM `projEmp`
WHERE `codProj` IN ( -- exclui todos os registros da tabela projEmp que estão associados a projetos com preço abaixo de 6000.00
    SELECT `codProj`
    FROM `projeto`
    WHERE `preco` < 6000.00);

-- Questão 9:

