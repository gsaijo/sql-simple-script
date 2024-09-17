# Script criado para fortalecer conhecimentos!!!

Definir o Tempo Inicial:

SET @start_time = NOW();

Inicia a contagem do tempo.

<h6>-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h6>

Consulta Principal:

SELECT pr.produto, SUM(ve.qty * pr.preco) AS total_venda
FROM produtos pr
JOIN vendas ve
ON pr.codigo = ve.codigo
GROUP BY pr.produto
ORDER BY total_venda DESC;

Executa a consulta para calcular o total de vendas por produto.

<h6>-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h6>

Verificar Vendas Sem Produtos Correspondentes:

SELECT ve.*
FROM vendas ve
LEFT JOIN produtos pr ON ve.codigo = pr.codigo
WHERE pr.codigo IS NULL;

Verifica se há registros de vendas que não têm produtos correspondentes.

<h6>-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h6>

Definir o Tempo Final:

SET @end_time = NOW();

Marca o tempo final após a execução das consultas.

<h6>-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h6>

Calcular o Tempo de Execução:

SELECT TIMEDIFF(@end_time, @start_time) AS tempo_de_execucao;

Calcula a diferença entre o tempo final e o inicial para determinar o tempo total de execução.

<h6>-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h6>

