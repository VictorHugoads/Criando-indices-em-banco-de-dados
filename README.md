# Criando Índices em Banco de Dados

Este repositório contém scripts SQL para otimizar consultas em banco de dados através da criação de índices, manipulação de dados com procedimentos e outras funcionalidades relacionadas à administração de banco de dados.

## Funcionalidades

- **Criação de Índices**: Scripts para otimizar consultas como:
  - Contagem de pessoas por departamento.
  - Exibição de departamentos por cidade.
  - Relação de empregados por departamento.

- **Procedures de Manipulação de Dados**: Exemplo de **procedure** para selecionar, atualizar ou deletar dados de forma controlada.

- **Consultas de Relacionamento**: Scripts de consultas para agrupar dados e otimizar o desempenho de operações de leitura no banco.

- **Gatilhos (Triggers)**: Scripts para automação de ações como inserções e atualizações de dados.

## Como Usar

1. Clone este repositório.
2. Execute os scripts SQL no seu banco de dados MySQL.
3. Verifique a criação dos índices, a execução das procedures e dos gatilhos.

## Scripts Disponíveis

### Parte 1: Criação de Índices

- **Contagem de pessoas por departamento**:
  ```sql
  CREATE INDEX idx_departamento ON funcionarios(departamento);
