consulta_funcionarios_por_departamento.sql: Consulta para listar os funcionários por cidade e departamento.

SELECT cidade, departamento, nome
FROM funcionarios
ORDER BY cidade, departamento;
