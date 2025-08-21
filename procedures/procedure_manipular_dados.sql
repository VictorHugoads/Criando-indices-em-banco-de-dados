procedure_manipular_dados.sql: Procedimento para selecionar, atualizar ou deletar dados de funcionários.

DELIMITER $$

CREATE PROCEDURE manipular_dados(
    IN opcao INT,
    IN id INT,
    IN nome VARCHAR(100),
    IN departamento VARCHAR(50)
)
BEGIN
    DECLARE v_resultado INT;
    
    CASE
        WHEN opcao = 1 THEN
            SELECT * FROM funcionarios WHERE id = id;
        WHEN opcao = 2 THEN
            UPDATE funcionarios
            SET nome = nome, departamento = departamento
            WHERE id = id;
        WHEN opcao = 3 THEN
            DELETE FROM funcionarios WHERE id = id;
        ELSE
            SET v_resultado = -1;
    END CASE;
END $$

DELIMITER ;
