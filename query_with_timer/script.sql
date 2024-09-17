SET @star_time = NOW();

SELECT pr.produto, SUM(ve.qty * pr.preco) AS total_venda
FROM produtos pr 
JOIN vendas ve
ON pr.codigo = ve.codigo
GROUP BY pr.produto
ORDER by total_venda DESC;

SELECT ve.*
FROM vendas vendas
LEFT JOIN produtos pr ON ve.codigo = pr.codigo
WHERE pr.codigo IS NULL;

SET @end_time = NOW();
SELECT TIMEDIFF(@end_time, @start_time) AS tempo_de_execucao;


