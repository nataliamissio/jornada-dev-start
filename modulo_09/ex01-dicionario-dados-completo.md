# Exercicio 1 - Dicionario de Dados Completo (bonus)

Objetivo: configurar as tabelas do projeto no dicionario do Protheus.

## SZ1 - Contatos

| Titulo | Campo | Tipo | Tam | Dec | Contexto |
|---|---|---|---|---|---|
| Filial | Z1_FILIAL | C | 2 | 0 | Real |
| Codigo | Z1_CODIGO | C | 6 | 0 | Real |
| Cliente | Z1_CLIENTE | C | 6 | 0 | Real |
| Loja Cliente | Z1_LOJACLI | C | 2 | 0 | Real |
| Nome Cliente | Z1_NOME | C | 40 | 0 | Virtual |
| Assunto | Z1_ASSUNTO | C | 60 | 0 | Real |
| Data | Z1_DATA | D | 8 | 0 | Real |
| Hora | Z1_HORA | C | 5 | 0 | Real |

## SZ2 - Interacoes

| Titulo | Campo | Tipo | Tam | Dec | Contexto |
|---|---|---|---|---|---|
| Filial | Z2_FILIAL | C | 2 | 0 | Real |
| Contato (FK) | Z2_CONTAT | C | 6 | 0 | Real |
| Sequencia | Z2_SEQUEN | C | 3 | 0 | Real |
| Tipo | Z2_TIPO | C | 1 | 0 | Real |
| Descricao | Z2_DESCRI | C | 100 | 0 | Real |
| Data | Z2_DATA | D | 8 | 0 | Real |
| Hora | Z2_HORA | C | 5 | 0 | Real |
| Usuario | Z2_USUAR | C | 20 | 0 | Real |
| Cod. Contato | Z2_CODIGO | C | 6 | 0 | Virtual |
| Assunto Cont. | Z2_ASSUNT | C | 60 | 0 | Virtual |

## SX2 (Tabelas)

- SZ1 - Contatos - modo C (Compartilhado)
- SZ2 - Interacoes - modo C (Compartilhado)

## SIX (Indices)

### SZ1

1. Z1_FILIAL + Z1_CODIGO
2. Z1_FILIAL + Z1_CLIENTE + Z1_LOJACLI
3. Z1_FILIAL + DTOS(Z1_DATA)

### SZ2

1. Z2_FILIAL + Z2_CONTAT + Z2_SEQUEN
2. Z2_FILIAL + DTOS(Z2_DATA)

## SX5 (Dominio do campo Z2_TIPO)

- Tabela: Z2
- E = E-mail
- L = Ligacao
- R = Reuniao
- V = Visita
- W = WhatsApp

## Campos virtuais (X3_RELACAO da SZ2)

- Z2_CODIGO:

```advpl
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_CODIGO")
```

- Z2_ASSUNT:

```advpl
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_ASSUNTO")
```