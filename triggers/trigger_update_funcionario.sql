trigger_update_funcionario.sql: Gatilho para registrar a atualização de dados de funcionários.

CREATE TRIGGER update_funcionario
BEFORE UPDATE ON funcionarios
FOR EACH ROW
BEGIN
    -- Registrar a atualização de dados
    INSERT INTO historico_funcionario (id_funcionario, acao, data_acao)
    VALUES (OLD.id, 'Atualização', NOW());
END;
