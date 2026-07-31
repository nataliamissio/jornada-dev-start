# Módulo 7 — Exercício 2: A Tabela ZA1 (Pets)

## Descrição do Exercício

Descrever a estrutura, os índices e as convenções utilizadas na criação da tabela customizada `ZA1` (Cadastro de Pets) no ambiente Protheus.

---

## Respostas

### a. Estrutura dos campos da ZA1

| Campo          | Título / Descrição | Tipo      | Tamanho | Decimal | Contexto / Obs.                   |
| :------------- | :----------------- | :-------- | :------ | :------ | :-------------------------------- |
| **ZA1_FILIAL** | Filial do Sistema  | Caractere | 2       | 0       | Real (Obrigatório em toda tabela) |
| **ZA1_COD**    | Código do Pet      | Caractere | 6       | 0       | Real (Chave primária)             |
| **ZA1_NOME**   | Nome do Pet        | Caractere | 40      | 0       | Real                              |
| **ZA1_RACA**   | Raça do Pet        | Caractere | 20      | 0       | Real                              |
| **ZA1_DTNASC** | Data de Nascimento | Data      | 8       | 0       | Real                              |

### b. Índice sugerido e justificativa

* **Índice 1:** `ZA1_FILIAL + ZA1_COD`

* **Justificativa:** No Protheus, o índice utiliza a combinação da filial com o código do registro para identificar de forma única um Pet dentro de determinada filial. Essa estrutura facilita a localização dos registros e mantém a organização dos dados conforme o padrão utilizado pelo sistema.

### c. Por que o prefixo da tabela é `Z`?

No Protheus, a letra **`Z`** é utilizada por convenção para identificar tabelas e objetos customizados pelo cliente ou desenvolvedor. Dessa forma, as customizações podem ser diferenciadas das tabelas padrão do sistema, reduzindo o risco de conflitos com estruturas nativas do Protheus.

### d. Por que os campos usam o prefixo `ZA1_`?

Os campos utilizam o prefixo da própria tabela seguido de um underline, seguindo o padrão de nomenclatura do Protheus.

Dessa forma, os campos podem ser facilmente relacionados à tabela à qual pertencem, evitando ambiguidades em consultas e no desenvolvimento.

Por exemplo:

* `ZA1_NOME` pertence à tabela `ZA1`.
* `A1_NOME` pertence à tabela `SA1`.

Esse padrão facilita a identificação dos campos durante o desenvolvimento e a manutenção do sistema.
