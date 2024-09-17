-- Definir o tempo inicial
SET @start_time = NOW();

-- Consulta principal
SELECT pr.produto, SUM(ve.qty * pr.preco) AS total_venda
FROM produtos pr 
JOIN vendas ve
ON pr.codigo = ve.codigo
GROUP BY pr.produto
ORDER by total_venda DESC;

-- Verificar se há vendas sem produtos correspondentes
SELECT ve.*
FROM vendas vendas
LEFT JOIN produtos pr ON ve.codigo = pr.codigo
WHERE pr.codigo IS NULL;

-- Definir o tempo final
SET @end_time = NOW();
-- Calcular o tempo de execução
SELECT TIMEDIFF(@end_time, @start_time) AS tempo_de_execucao;
