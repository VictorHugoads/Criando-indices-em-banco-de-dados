consulta_funcionarios_por_cidade.sql: Consulta para contar o número de funcionários por cidade.

SELECT cidade, COUNT(*) AS numero_de_funcionarios
FROM funcionarios
GROUP BY cidade
ORDER BY numero_de_funcionarios DESC;
