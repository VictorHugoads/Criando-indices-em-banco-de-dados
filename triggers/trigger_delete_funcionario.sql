trigger_delete_funcionario.sql: Gatilho para registrar a exclusão de dados de funcionários.

CREATE TRIGGER delete_funcionario
AFTER DELETE ON funcionarios
FOR EACH ROW
BEGIN
    -- Registrar exclusão de funcionário
    INSERT INTO historico_funcionario (id_funcionario, acao, data_acao)
    VALUES (OLD.id, 'Exclusão', NOW());
END;
