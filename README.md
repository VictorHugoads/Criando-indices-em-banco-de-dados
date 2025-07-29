Qual o departamento com maior número de pessoas? 👥🏢
------------------------------------------------------------------------------------------------------------------------------------------------------------
sql
Copiar
Editar
-- Consulta SQL
SELECT departamento, COUNT(*) AS numero_de_pessoas   -- Contagem de pessoas por departamento
FROM funcionarios                                      -- Tabela de funcionários
GROUP BY departamento                                  -- Agrupar por departamento
ORDER BY numero_de_pessoas DESC                        -- Ordenar pela quantidade de pessoas
LIMIT 1;                                               -- Limitar para pegar o maior

-- Criação do índice para otimizar a consulta 🔍
CREATE INDEX idx_departamento ON funcionarios(departamento); -- Criar índice na coluna 'departamento'

-- Justificativa:
-- O índice 'idx_departamento' facilita a busca por registros agrupados 
-- por departamento, melhorando a performance ao responder qual departamento 
-- tem o maior número de pessoas. 🚀
------------------------------------------------------------------------------------------------------------------------------------------------------------
Quais são os departamentos por cidade? 🏙️🗂️
sql
Copiar
Editar
-- Consulta SQL
SELECT cidade, departamento                            -- Selecionar cidade e departamento
FROM funcionarios                                      -- Tabela de funcionários
GROUP BY cidade, departamento                          -- Agrupar por cidade e departamento
ORDER BY cidade, departamento;                         -- Ordenar pela cidade e departamento
------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Criação do índice para otimizar a consulta 🔍
CREATE INDEX idx_cidade_departamento ON funcionarios(cidade, departamento); -- Criar índice nas colunas 'cidade' e 'departamento'

-- Justificativa:
-- O índice 'idx_cidade_departamento' é importante para melhorar a performance 
-- de consultas que agrupam registros por cidade e departamento, tornando a 
-- execução mais eficiente. ⚡
------------------------------------------------------------------------------------------------------------------------------------------------------------
Relação de empregados por departamento 👨‍💼👩‍💼
sql
Copiar
Editar
-- Consulta SQL
SELECT departamento, nome                             -- Selecionar departamento e nome
FROM funcionarios                                      -- Tabela de funcionários
ORDER BY departamento, nome;                          -- Ordenar por departamento e nome

-- Criação do índice para otimizar a consulta 🔍
CREATE INDEX idx_departamento_nome ON funcionarios(departamento, nome); -- Criar índice nas colunas 'departamento' e 'nome'

-- Justificativa: 
-- O índice 'idx_departamento_nome' facilita a ordenação dos dados por 
-- departamento e nome, melhorando a performance ao listar os empregados 
-- por departamento. 📈
Parte 2: Criação da Procedure de Manipulação de Dados 🛠️💻
sql
Copiar
Editar
DELIMITER $$                                         -- Definir delimitador para a procedure

CREATE PROCEDURE manipular_dados(                    -- Criar a procedure 'manipular_dados'
    IN opcao INT,                                     -- Determina a ação (1 = SELECT, 2 = UPDATE, 3 = DELETE) 💡
    IN id INT,                                        -- ID do funcionário para manipulação 🆔
    IN nome VARCHAR(100),                             -- Nome do funcionário 📝
    IN departamento VARCHAR(50)                       -- Departamento do funcionário 🏢
)
BEGIN
    DECLARE v_resultado INT;                          -- Variável de controle para erros ❌

    -- Verifica a opção de ação 🧐
    CASE
        WHEN opcao = 1 THEN                           -- Se a opção for 1 (SELECT)
            -- Consulta: Selecionar dados 🔍
            SELECT * FROM funcionarios WHERE id = id; -- Selecionar dados do funcionário pelo ID
        WHEN opcao = 2 THEN                           -- Se a opção for 2 (UPDATE)
            -- Update: Atualizar dados ✏️
            UPDATE funcionarios                        -- Atualizar dados na tabela de funcionários
            SET nome = nome, departamento = departamento -- Atualiza nome e departamento
            WHERE id = id;                            -- Onde o ID do funcionário for igual ao fornecido
        WHEN opcao = 3 THEN                           -- Se a opção for 3 (DELETE)
            -- Delete: Remover dados 🗑️
            DELETE FROM funcionarios WHERE id = id;   -- Excluir funcionário pelo ID
        ELSE                                           -- Se a opção for inválida
            -- Valor de erro caso a opção não seja válida 🚨
            SET v_resultado = -1;                    -- Definir valor de erro
    END CASE;

END $$                                              -- Final da procedure

DELIMITER ;                                          -- Final do delimitador
