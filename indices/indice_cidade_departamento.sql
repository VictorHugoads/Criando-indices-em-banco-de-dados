indice_cidade_departamento.sql: Criação do índice para otimizar a consulta de departamentos por cidade.

CREATE INDEX idx_cidade_departamento ON funcionarios(cidade, departamento);
