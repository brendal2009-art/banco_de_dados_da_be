-- 5 - Listar TODOS os Produtos: Mostre o nome de todos os produtos e, ao lado, o nome da sua categoria. Se um produto não tiver categoria, ele ainda deve aparecer na lista (com o nome da categoria como nulo).
SELECT
    p.nome AS `Produto`,
    c.nome AS `Categoria`
FROM produtos p
LEFT JOIN categorias c -- LEFT JOIN = junção à esquerda, ou seja, todos os registros da tabela produtos serão exibidos, mesmo que não tenham correspondência na tabela categorias
    ON p.idCategoria_fk = c.idCategoria;