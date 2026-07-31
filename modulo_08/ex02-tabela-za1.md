# Módulo 8 — Exercício 2: Completando a Tabela ZA1 (O Pet Ganha um Dono)

## Descrição do Exercício

Neste exercício foi realizada a complementação da tabela customizada **ZA1 (Pets)**, adicionando os campos necessários para relacionar cada pet ao seu respectivo cliente (dono), conforme apresentado durante a aula do Módulo 8.

---

# Passo a Passo Executado

## Passo 1 – Acessar o Configurador

1. Abrir o SmartClient.
2. Acessar o módulo **SIGACFG (Configurador)**.
3. Navegar até:

```
Base de Dados → Dicionário → Base de Dados
```

4. Localizar a tabela **ZA1** criada no exercício anterior.

---

## Passo 2 – Complementar os Campos da Tabela

Foram adicionados os seguintes campos à estrutura da tabela:

| Campo | Tipo | Tamanho | Contexto | Descrição |
|-------|------|----------|----------|-----------|
| ZA1_CLIENT | Caractere | 6 | Real | Código do Cliente |
| ZA1_LOJA | Caractere | 2 | Real | Loja do Cliente |
| ZA1_NOMCLI | Caractere | 40 | Virtual | Nome do Cliente |
| ZA1_OBS | Caractere | 60 | Real | Observações |

Além desses, permaneceram os campos criados anteriormente:

- ZA1_FILIAL
- ZA1_COD
- ZA1_NOME
- ZA1_RACA
- ZA1_DTNASC

---

## Passo 3 – Configuração do Campo Virtual

O campo **ZA1_NOMCLI** foi configurado como **Virtual**, permitindo que o sistema apresente automaticamente o nome do cliente sem armazenar essa informação fisicamente na tabela.

Foi utilizada a seguinte relação:

```advpl
POSICIONE("SA1",1,xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA,"A1_NOME")
```

Com essa configuração, ao informar o código e a loja do cliente, o Protheus consulta automaticamente a tabela **SA1** e exibe o nome correspondente.

---

## Passo 4 – Configuração da Validação

O campo **ZA1_CLIENT** recebeu uma validação para verificar se o cliente informado existe na tabela SA1.

Foi utilizada a função:

```advpl
ExistCpo("SA1", xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA, 1)
```

Essa validação impede o cadastro de um pet para um cliente inexistente.

---

## Passo 5 – Criação dos Índices (SIX)

Foram criados os seguintes índices:

### Índice 1

```
ZA1_FILIAL + ZA1_COD
```

Responsável pela identificação única de cada cadastro.

### Índice 2

```
ZA1_FILIAL + ZA1_CLIENT + ZA1_LOJA
```

Utilizado para facilitar a consulta dos pets pertencentes a um determinado cliente.

---

## Passo 6 – Atualização da Estrutura

Após concluir as alterações, foi realizada a atualização da estrutura do dicionário de dados para que o framework do Protheus reconhecesse os novos campos e índices.

---

# Estrutura Final da Tabela

| Campo | Tipo | Tamanho | Contexto |
|-------|------|----------|----------|
| ZA1_FILIAL | Caractere | 2 | Real |
| ZA1_COD | Caractere | 6 | Real |
| ZA1_CLIENT | Caractere | 6 | Real |
| ZA1_LOJA | Caractere | 2 | Real |
| ZA1_NOMCLI | Caractere | 40 | Virtual |
| ZA1_NOME | Caractere | 30 | Real |
| ZA1_RACA | Caractere | 20 | Real |
| ZA1_DTNASC | Data | 8 | Real |
| ZA1_OBS | Caractere | 60 | Real |

---

# Resultado Esperado

Após a configuração:

- A tabela ZA1 fica relacionada à tabela de clientes (SA1).
- Cada pet passa a possuir um cliente responsável.
- O nome do cliente é exibido automaticamente através do campo virtual.
- Os índices permitem pesquisas por código do pet e por cliente.

---

# Dificuldades Encontradas

Durante a realização da atividade foram encontradas algumas dificuldades:

- Diferenças entre a versão do Protheus utilizada na aula e a disponível no ambiente.
- Dificuldade para localizar algumas propriedades do SX3, como **Contexto** e **Relação** do campo virtual.
- Instabilidade do ambiente Protheus durante a configuração da estrutura.
- Necessidade de revisar a criação dos índices para manter o padrão apresentado em aula.

Apesar dessas dificuldades, foi possível compreender como relacionar uma tabela customizada à tabela padrão de clientes utilizando recursos do dicionário de dados do Protheus.