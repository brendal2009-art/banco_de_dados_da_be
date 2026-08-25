-- Questão 1
INSERT INTO `cliente` (`cpf`, `nome`, `telefone`)
    VALUES ('111.111.111-11', 'João da Silva', 48991234567);

-- Questão 2

INSERT INTO `cliente` (`cpf`, `nome`, `telefone`)
    VALUES ('222.222.222-22', 'Maria Oliveira', 48997654321);

-- Questão 3

INSERT INTO `empregado` (`cpf`, `nome`, `cargo`)
    VALUES ('333.333.333-33', 'Carlos Pereira', 'Analista de Sistemas');

-- Questão 4

INSERT INTO `empregado` (`cpf`, `nome`, `cargo`)
    VALUES ('444.444.444-44', 'Ana Souza', 'Gerente de Projetos');

-- Questão 5

USE `empresa`;
INSERT INTO `projeto` (`nome`,`descricao`,`preco`,`dtFim`,`dtEstimada`,`dtSolicitacao`,`cpfGerente`,`cpfCliente`) VALUES
('Sistema de Vendas', 'Plataforma para e-commerce', '15000.00','2025-12-01','2025-11-15', '2025-09-10', '444.444.444-44', '111.111.111-11'),
('Aplicativo Financeiro', 'Gestão de despesas pessoais', '12000.00', '2025-10-30', '2025-10-20', '2025-09-12', '444.444.444-44','222.222.222-22');

-- Questão 6

USE `empresa`;
INSERT INTO `projeto` (`nome`,`descricao`,`preco`,`dtFim`,`dtEstimada`,`dtSolicitacao`,`cpfGerente`,`cpfCliente`) VALUES
('Aplicativo Financeiro', 'Gestão de despesas pessoais', '12000.00', '2025-10-30', '2025-10-20', '2025-09-12', '444.444.444-44','222.222.222-22');

-- Questão 7

USE `empresa`;
INSERT INTO `projEmp` (`cpfEmpregado`,`codProj`, `hrTrab`) VALUES
('333.333.333-33','1','40'),
('444.444.444-44','1','20'),
('333.333.333-33','2','35');

-- Questão 8

USE `empresa`;
INSERT INTO `projEmp` (`cpfEmpregado`,`codProj`, `hrTrab`) VALUES
('444.444.444-44','1','20');

-- Questão 9

USE `empresa`;
INSERT INTO `projEmp` (`cpfEmpregado`,`codProj`, `hrTrab`) VALUES
('333.333.333-33','2','35');

-- Questão 10

USE `empresa`;
INSERT INTO `cliente` (`nome`, `cpf`, `telefone`) VALUES
('Pedro Gomes', '555.555.555-55', 48999887766);

--Questão 11

USE `empresa`;
INSERT INTO `empregado` (`nome`, `cpf`, `cargo`) VALUES
('Lucas Andrade', '666.666.666-66','Desenvolvedor Backend');

--Questão 12

INSERT INTO `projeto` (`nome`,`descricao`,`preco`,`dtFim`,`dtEstimada`,`dtSolicitacao`,`cpfGerente`,`cpfCliente`) VALUES
('Site Institucional', 'Página para empresa local', '5000.00','2025-11-01','2025-10-25', '2025-09-20', '444.444.444-44', '555.555.555-55');

--Questão 13

USE `empresa`;
INSERT INTO `projEmp` (`cpfEmpregado`,`codProj`, `hrTrab`) VALUES
('666.666.666-66','3','50');

-- Questão 14

USE `empresa`;
INSERT INTO `cliente` (`nome`, `cpf`, `telefone`) VALUES
('Fernanda Lima', '777.777.777-77', 48991231231);

-- Questão 15

INSERT INTO `projeto` (`nome`,`descricao`,`preco`,`dtFim`,`dtEstimada`,`dtSolicitacao`,`cpfGerente`,`cpfCliente`) VALUES
('Controle de Estoque', 'Sistema para loja de roupas', '8000.00', '2025-12-20', '2025-12-05', '2025-09-25', '444.444.444-44','777.777.777-77');