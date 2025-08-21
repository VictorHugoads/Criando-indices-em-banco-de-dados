indice_departamento.sql: Criação do índice para otimizar a consulta de contagem de pessoas por departamento.

CREATE INDEX idx_departamento ON funcionarios(departamento);
