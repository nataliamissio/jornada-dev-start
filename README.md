# Jornada Dev Start - TOTVS Paulista 🚀

Repositório dedicado ao acompanhamento das minhas atividades, exercícios práticos e desenvolvimento do projeto final (TCC) durante o programa **Dev Start da TOTVS Paulista**.

O objetivo deste espaço é consolidar o meu aprendizado no ERP **TOTVS Protheus**, utilizando a linguagem **AdvPL / TLPP** compilada sob a infraestrutura baseada em **Harbour** (AppServer).

## 🛠️ Stack Tecnológica
- **Linguagem Principal:** AdvPL / TLPP (reconhecida no GitHub como xBase)
- **Compilador/Engine:** Harbour (TOTVS AppServer)
- **Ambiente ERP:** TOTVS Protheus
- **IDE/Ambiente de Desenvolvimento:** VS Code com a extensão *TDS (TOTVS Developer Studio)*

## 📅 Cronograma de Módulos & Progresso

Aqui está a organização das entregas do programa, dividida em etapas rumo ao projeto final:

- [x] *Módulo 01:* Boas-vindas, Configuração de Ambiente e Primeiro Programa
- [x] *Módulo 02:* Lógica de Programação e Algoritmos
- [x] *Módulo 03:* Variáveis, tipos e operadores
- [x] *Módulo 04:* Decisões (Condicionais)
- [x] *Módulo 05:* Repetição (Loops) 
- [x] *Módulo 06:* Funções e Arrays 
- [x] *Módulo 07:* Entrando no Protheus (Arquitetura e Dicionário)
- [x] *Módulo 08:* CRUD no Protheus (AxCadastro e mBrowse)
- [ ] *Módulo 09:* Projeto CRUD Completo + Tratamento de Erros
- [x] *Módulo 10:* TCC / Repositório do Projeto Final

## 📂 Descrição dos Módulos Finais

### Módulo 07 — Entrando no Protheus (Arquitetura e Dicionário)
* **Conteúdo:** Introdução à arquitetura do Protheus e ao funcionamento do Dicionário de Dados (SXs). Compreensão de como o ERP gerencia tabelas, campos e índices, e a estrutura básica para o desenvolvimento dentro do ecossistema TOTVS.

### Módulo 08 — CRUD no Protheus (`AxCadastro` e `mBrowse`)
* **Conteúdo:** Implementação de rotinas de listagem e manutenção de dados utilizando componentes nativos do Advanced Protheus Language (ADVPL). Estudo prático da função `mBrowse` para exibição de registros e do `AxCadastro` para a automação de telas de cadastro.

### Módulo 09 — Projeto CRUD Completo + Tratamento de Erros
* **Conteúdo:** Desenvolvimento de um projeto CRUD completo envolvendo múltiplas tabelas, aplicação de regras de negócio avançadas, criação de gatilhos customizados e implementação de tratamento de erros robusto para garantir a estabilidade das rotinas.

## 📂 Estrutura do Repositório
Seguindo o padrão exigido para a correção das atividades, a estrutura de pastas do projeto está organizada desta forma:

```text
.
├── modulo_01/                    # Exercícios do Módulo 1 (Entregue)
│   ├── ex01_hello.prg            # Hello World inicial
│   ├── ex02_saudacao.prg         # Exercício de Saudação
│   ├── ex03_apresentacao.prg     # Ficha de apresentação pessoal
│   └── ex04_data-hora.prg        # Desafio opcional de Data/Hora
│
├── modulo_02/                    # Exercícios do Módulo 2 (Entregue)
│   ├── ex01-algoritmo-valido.md  # Conceito e validação de algoritmos
│   ├── ex02-pseudocodigo.md      # Representação lógica em pseudocódigo
│   ├── ex03-fluxograma-desconto.md # Fluxograma visual de decisão de desconto
│   ├── ex04-refinamento.md       # Decomposição e refinamento sucessivo
|   └── ex05-reflexao.md          # Reflexão sobre o papel do programador
│
├── modulo_03/                    # Exercícios do Módulo 3 (Entregue)
│   ├── ex01-declaracoes.prg      # Declaração e inicialização de variáveis
│   ├── ex02-formulas.prg           # Cálculos matemáticos básicos
│   ├── ex03-desconto-idoso.prg     # Aplicação de desconto por idade
│   ├── ex04-igualdade.prg          # Operadores de comparação
│   └── ex05-media-ponderada.prg    # Cálculo de média com pesos
│
├── modulo_04/                    # Exercícios do Módulo 4 (Entregue)
│   ├── ex01-maior-menor.prg        # Lógica de seleção (maior/menor)
│   ├── ex02-reajuste-salarial.prg  # Condicionais para faixas salariais
│   ├── ex03-calculadora.prg        # Calculadora com DO CASE
│   ├── ex04-nome-mes.prg           # Conversão numérica para meses
│   └── ex05-plano-saude.prg        # Cálculo de plano com dependentes
│
├── modulo_05/                    # Exercícios do Módulo 5 (Entregue)
│   ├── ex01-sequencias-for.prg     # Uso de laços FOR/NEXT
│   ├── ex02-dobro-while.prg        # Laço WHILE para cálculo do dobro
│   ├── ex03-maquina-soma.prg       # Acumuladores e contadores
│   ├── ex04-validacao-aluno.prg    # Loops de consistência de dados
│   ├── ex05-loop-programa.prg      # Laço de persistência do programa
│   └── ex06-adivinhe-numero.prg    # Jogo de adivinhação (desafio)
│
├── modulo_06/                    # Exercícios do Módulo 6 (Entregue)
│   ├── ex01-funcao-ou-procedimento.md # Diferenças entre função e procedimento
│   ├── ex02-relogio-modular.prg       # Exibição de relógio com funções
│   ├── ex03-calculadora-refatorada.prg # Calculadora modularizada
│   ├── ex04-biblioteca-matematica/    # Coleção de funções matemáticas
│   ├── ex05-jokenpo-modular.prg       # Jogo Jokenpô modularizado (desafio)
│   ├── ex06-dias-da-semana.prg        # Mapeamento de dias utilizando vetores
│   ├── ex07-estatisticas-numeros.prg  # Operações estatísticas sobre arrays
│   ├── ex08-sistema-notas.prg         # Gestão de notas de alunos
│   ├── ex09-carrinho-compras.prg      # Manipulação de itens e valores em array
│   ├── ex10-bubble-sort.prg           # Algoritmo de ordenação (desafio)
│   └── ex11-controle-estoque/         # Sistema completo de estoque (desafio)
│
├── modulo_07/                    # Exercícios do Módulo 7 (Entregue)
│   ├── ex01-conceitos-fundamentais.md # Conceitos fundamentais do Protheus
│   ├── ex02-estrutura-za1-pets.md     # Estruturação da tabela ZA1 (Pets)
│   ├── ex03-recriar-za1.md            # Recriação e ajustes da tabela ZA1
│   ├── ex04-campo-customizado-sa1.md  # Criação de campos customizados na SA1
│   └── ex05-filial-xfilial.md         # Estudo sobre compartilhamento e XFilial
│
├── modulo_08/                    # Exercícios do Módulo 8 (Entregue)
│   ├── ex01-axcadastro-vs-mbrowse.md  # Comparativo entre AxCadastro e mBrowse
│   ├── ex02-tabela-za1.md             # Especificações da tabela ZA1
│   ├── ex03-axcadastro-za1.prw        # Rotina AxCadastro para a tabela ZA1
│   ├── ex04-validacao-existcpo.prw    # Validação com ExistCpo
│   ├── ex05-mbrowse-za1.prw           # Rotina mBrowse para a tabela ZA1
│   ├── ex06-legendas-coloridas.prw    # Implementação de legendas coloridas
│   ├── ex07-gatilho-cep.md            # Desenvolvimento de gatilho para CEP
│   └── ex08-filtro-mes.prw            # Filtro por mês em mBrowse
│
├── modulo_09/                    # Exercícios do Módulo 9 (Pendente)
│   ├── ex01-dicionario-dados-completo.md # Dicionário de dados completo (Desafio)
│   ├── ex02-*/                          # Vários arquivos do projeto (Desafio)
│   ├── ex03-gatilhos-validacoes.md      # Gatilhos e validações (Desafio)
│   ├── ex04-menu-sigacom.md             # Menu SIGACOM (Desafio)
│   ├── ex05-tratamento-erros.prg        # Tratamento de erros com BEGIN SEQUENCE/RECOVER
│   ├── ex06-gravacao-segura.prw         # Gravação segura com transações e RecLock
│   └── ex07-desafio-integridade-executor.prw # Desafio de integridade (Desafio)
│
├── tcc/                          # Código-fonte do Projeto de Conclusão (TCC)
└── README.md                     # Documentação do projeto
