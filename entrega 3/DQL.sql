SELECT Descricao
FROM Produto
WHERE ID_Produto IN
(
    SELECT ID_Produto_FK
    FROM Movimentacao_Estoque
);

SELECT Descricao, Preco_Venda
FROM Produto
WHERE Preco_Venda >
(
    SELECT AVG(Preco_Venda)
    FROM Produto
);

SELECT Nome 
FROM Fornecedor F
WHERE EXISTS (
    SELECT 1 
    FROM Fornece FO
    JOIN Movimentacao_Estoque M ON FO.ID_Produto_FK = M.ID_Produto_FK
    WHERE FO.ID_Fornecedor_FK = F.ID_Fornecedor
    AND M.Tipo_Movimentacao = 'Saida'
);

SELECT Descricao
FROM Produto
WHERE Tipo_Produto = 'Medicamento'
UNION
SELECT Descricao
FROM Produto
WHERE Tipo_Produto = 'Higiene';

SELECT Tipo_Movimentacao, MAX(Saldo_Posterior) AS Maior_Saldo_Registrado
FROM (
    SELECT Tipo_Movimentacao, Saldo_Posterior
    FROM Movimentacao_Estoque
) AS Tabela_Saldos
GROUP BY Tipo_Movimentacao;

SELECT *
FROM Movimentacao_Estoque
WHERE Data_Hora_Movimentacao =
(
    SELECT MAX(Data_Hora_Movimentacao)
    FROM Movimentacao_Estoque
);
