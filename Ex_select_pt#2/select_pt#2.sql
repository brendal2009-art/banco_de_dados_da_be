--  SEÇÃO 1: (Renomeação de Colunas (Aliases AS)

-- 1 - Tutores: Selecione a coluna nome e a coluna cidade da tabela Tutores. Renomeie-as para 'Nome do Tutor' e 'Cidade'.
    SELECT nome AS `Nome do Tutor`, cidade AS `Cidade` FROM `Tutores`;

-- 2 - Veterinários: Selecione o nome e a especialidade dos veterinários. Renomeie as colunas para 'Veterinário(a)' e 'Especialidade'.
    SELECT nome AS `Veterinário(a)`, especialidade AS `Especialidade` FROM Veterinarios;

-- 3 - Animais e Peso: Liste o nome e o peso_kg de todos os animais. Renomeie as colunas para 'Nome do Animal' e 'Peso (kg)'.
    SELECT nome AS `Nome do Animal`, peso_kg AS `Peso (kg)` FROM Animais;

-- 4 - Consultas: Selecione a dtConsulta e o custo da tabela Consultas. Renomeie as colunas para 'Data da Consulta' e 'Valor (R$)'.
    SELECT dtConsulta AS `Data da Consulta`, custo AS `Valor (R$)` FROM Consultas;


-- SEÇÃO 2: (Ordenação de Resultados (ORDER BY)

-- 5 - Ordem Alfabética (ASC): Liste o nome de todos os Tutores em ordem alfabética (A-Z).
    SELECT nome FROM Tutores ORDER BY nome ASC;

-- 6 - Ordem Alfabética (DESC): Liste o nome de todos os Animais em ordem alfabética inversa (Z-A).
    SELECT nome FROM Animais ORDER BY nome DESC;

-- 7 - Animais Mais Pesados (DESC): Liste o nome e o peso_kg dos animais, ordenados do mais pesado para o mais leve.
    SELECT nome, peso_kg FROM Animais ORDER BY peso_kg DESC;

-- 8 - Consultas Mais Baratas (ASC): Liste o motivo e o custo das consultas, ordenadas da mais barata para a mais cara.
    SELECT motivo, custo FROM Consultas ORDER BY custo ASC;
    
-- 9 - Animais Mais Novos (Data DESC): Liste o nome e a dtNascimento dos animais, ordenados do mais novo para o mais velho (data de nascimento mais recente primeiro).
    SELECT nome, dtNascimento FROM Animais ORDER BY dtNascimento DESC;

-- 10 - Animais Mais Velhos (Data ASC): Liste o nome e a dtNascimento dos animais, ordenados do mais velho para o mais novo (data de nascimento mais antiga primeiro).
    SELECT nome, dtNascimento FROM Animais ORDER BY dtNascimento ASC;

-- 11 - Consultas Recentes (Data/Hora DESC): Liste o motivo e a dtConsulta das consultas, ordenadas da mais recente para a mais antiga.
    SELECT motivo, dtConsulta FROM Consultas ORDER BY dtConsulta DESC;

-- 12 - Ordem Dupla: Liste os Animais ordenando primeiro pela especie (em ordem alfabética) e, para animais da mesma espécie, ordene pelo nome (também em ordem alfabética).
    SELECT nome, especie FROM Animais ORDER BY especie ASC, nome ASC;


-- SEÇÃO 3: (Limitação de Resultados (LIMIT)

-- 13 - Os 5 Primeiros: Selecione os 5 primeiros Animais cadastrados (use o idAnimal).
    SELECT * FROM Animais ORDER BY idAnimal ASC LIMIT 5;

-- 14 - Os 3 Primeiros: Selecione as 3 primeiras Consultas registradas na tabela (use a idConsulta).
    SELECT * FROM Consultas ORDER BY idConsulta ASC LIMIT 3;

-- 15 - Paginação (Página 1): Simule uma página de resultados. Liste os Tutores, mas mostre apenas 2 por página. Exiba a "Página 1" (os dois primeiros).
    SELECT * FROM Tutores ORDER BY idTutor ASC LIMIT 2;

-- 16 - Paginação (Página 2): Usando a lógica do exercício anterior, exiba a "Página 2" da lista de Tutores (pule os 2 primeiros e mostre os 2 seguintes). Use a sintaxe LIMIT [offset], [count].
    SELECT * FROM Tutores ORDER BY idTutor ASC LIMIT 2 OFFSET 2; -- OFFSET serve para pular os primeiros registros, neste caso, os 2 primeiros.


-- SEÇÃO 4: (Desafios Combinados (AS, ORDER BY, LIMIT)

-- 17 - O Animal Mais Pesado: Encontre o animal mais pesado da clínica. Exiba apenas o nome (como 'Animal Mais Pesado') e o peso_kg (como 'Peso (kg)').
    SELECT nome AS `Animal Mais Pesado`, peso_kg AS `Peso (kg)` FROM Animais ORDER BY peso_kg DESC LIMIT 1;

-- 18 - A Consulta Mais Cara: Qual foi a consulta de maior custo? Exiba o motivo (como 'Motivo'), o diagnostico (como 'Diagnóstico') e o custo (como 'Valor').
    SELECT motivo AS `Motivo`, diagnostico AS `Diagnóstico`, custo AS `Valor` FROM Consultas ORDER BY custo DESC LIMIT 1;

-- 19 - Top 3 Animais Mais Novos: Liste os 3 animais mais novos (data de nascimento mais recente). Exiba o nome (como 'Nome'), a especie (como 'Espécie') e a dtNascimento (como 'Nascimento').
    SELECT nome AS `Nome`, especie AS `Espécie`, dtNascimento AS `Nascimento` FROM Animais ORDER BY dtNascimento DESC LIMIT 3;

-- 20 - As 2 Consultas Mais Antigas: Encontre as duas consultas mais antigas registradas. Exiba a dtConsulta (como 'Data') e o motivo (como 'Motivo').
    SELECT dtConsulta AS `Data`, motivo AS `Motivo` FROM Consultas ORDER BY dtConsulta ASC LIMIT 2;