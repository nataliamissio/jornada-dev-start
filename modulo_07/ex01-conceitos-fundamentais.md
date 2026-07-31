# Módulo 7 — Exercício 1: Conceitos Fundamentais

## Descrição do Exercício
Responder aos conceitos fundamentais sobre a arquitetura e o funcionamento do Protheus, abordando o AppServer, o RPO, o Configurador e os tipos de campos no dicionário.

---

## Respostas

### a. Qual é a função do AppServer?
O **AppServer** é o motor (backend) da arquitetura Protheus. Ele gerencia as conexões dos clientes (SmartClient/Web), executa o código em ADVPL/TL++, processa as regras de negócio e faz a ponte de comunicação e transações de dados com o Banco de Dados através do TopConnect/DBAccess.

### b. O que é o RPO?
O **RPO (Repository Process Object)** é o repositório de objetos compilados do Protheus. Ele funciona como uma "biblioteca" central onde ficam armazenados todos os programas compilados da TOTVS (padrões) e as customizações desenvolvidas (User Functions), que o AppServer carrega na memória para execução.

### c. Para que serve o Configurador (SIGACFG)?
O **SIGACFG** é o módulo administrativo do Protheus voltado para gestão e infraestrutura do sistema. É nele que o administrador define e mantém a estrutura do Dicionário de Dados (tabelas, campos, índices, gatilhos), gerencia usuários, perfis de acesso, empresas, filiais e parâmetros do sistema.

### d. Qual a diferença entre campo Real e campo Virtual no SX3?
* **Campo Real:** Possui uma coluna física correspondente na tabela do banco de dados relacional. Seus dados são gravados e persistidos fisicamente no banco.
* **Campo Virtual:** Existe apenas no Dicionário de Dados (SX3) e na memória/tela do sistema. Ele não cria coluna no banco e costuma ser usado para exibir dados calculados, gatilhos ou informações temporárias de consulta.