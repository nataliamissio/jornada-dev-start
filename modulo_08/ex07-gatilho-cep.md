# Exercício 7 — Gatilho para preenchimento do endereço pelo CEP

## Objetivo

Criar gatilhos no Protheus utilizando o dicionário de dados (SX7) para preencher automaticamente os campos de endereço do cadastro de clientes ao informar um CEP.

O processo utiliza a função `U_STCEP()` para buscar as informações relacionadas ao CEP informado e preencher automaticamente:

* Bairro (`A1_BAIRRO`);
* Município (`A1_MUN`);
* Estado (`A1_EST`).

---

## Configuração dos gatilhos no SX7

Os gatilhos foram configurados no campo `A1_CEP` da tabela de clientes.

| Sequência | Campo origem | Contra-domínio | Regra                         |
| --------- | ------------ | -------------- | ----------------------------- |
| 001       | A1_CEP       | A1_BAIRRO      | `U_STCEP(M->A1_CEP,"BAIRRO")` |
| 002       | A1_CEP       | A1_MUN         | `U_STCEP(M->A1_CEP,"CIDADE")` |
| 003       | A1_CEP       | A1_EST         | `U_STCEP(M->A1_CEP,"UF")`     |

Quando o usuário informa um CEP e sai do campo, o Protheus executa os gatilhos configurados e preenche os campos relacionados automaticamente.

---

# a) Diferença entre campo, contra-domínio e regra em um gatilho

No gatilho do Protheus existem três informações principais:

### Campo

É o campo que dispara a execução do gatilho.

Neste exercício, o campo utilizado é:

```
A1_CEP
```

Sempre que o usuário informar ou alterar o CEP, o gatilho será executado.

---

### Contra-domínio

É o campo que receberá o resultado retornado pela regra executada.

Exemplos:

```
A1_BAIRRO
A1_MUN
A1_EST
```

Cada gatilho possui um contra-domínio diferente para receber uma informação específica do endereço.

---

### Regra

É a expressão executada pelo Protheus para buscar ou calcular o valor que será preenchido no contra-domínio.

Neste exercício a regra chama a função:

```advpl
U_STCEP()
```

Exemplos:

```advpl
U_STCEP(M->A1_CEP,"BAIRRO")
```

retorna o bairro do CEP informado.

```advpl
U_STCEP(M->A1_CEP,"CIDADE")
```

retorna o município.

```advpl
U_STCEP(M->A1_CEP,"UF")
```

retorna o estado.

---

# b) Por que utilizar M->A1_CEP e não SA1->A1_CEP?

A variável:

```advpl
M->A1_CEP
```

representa o valor que está sendo digitado pelo usuário no formulário naquele momento.

Ela deve ser utilizada porque o gatilho é executado antes da gravação do registro no banco de dados.

Exemplo:

O usuário digita:

```
18035-000
```

Antes de salvar o cliente, o valor está apenas na memória do formulário, sendo acessado pelo:

```advpl
M->A1_CEP
```

---

Já:

```advpl
SA1->A1_CEP
```

representa o valor que já está gravado na tabela SA1.

Durante uma alteração, esse valor pode ainda ser o CEP antigo armazenado no banco, não sendo adequado para esse tipo de gatilho.

Por isso, quando trabalhamos com campos preenchidos durante a inclusão ou alteração, utilizamos o prefixo:

```
M->
```

---

# c) Problemas de manter os CEPs dentro do fonte

Manter todos os CEPs diretamente no código pode causar problemas em um ambiente de produção.

## Problema 1 — Manutenção difícil

Os endereços podem sofrer alterações ou novos CEPs podem ser criados.

Caso os dados estejam fixos no fonte, seria necessário:

* Alterar o código;
* Recompilar o programa;
* Atualizar o RPO novamente.

### Solução

Criar uma tabela própria no dicionário de dados para armazenar os CEPs.

Dessa forma, as informações poderiam ser atualizadas diretamente no banco sem alterar o código fonte.

---

## Problema 2 — Grande quantidade de dados

O Brasil possui uma quantidade muito grande de CEPs.

Manter todos eles dentro de um fonte causaria:

* Código muito grande;
* Dificuldade de organização;
* Maior dificuldade de atualização.

### Solução

Utilizar um serviço externo de consulta de CEP.

A função poderia realizar uma integração com uma API, receber os dados do endereço e retornar:

* Bairro;
* Município;
* Estado;
* Código do município.

---

# d) Como preencher também o campo A1_COD_MUN?

Para preencher o código do município, seria criado um novo gatilho no campo `A1_CEP`.

Configuração:

| Sequência | Contra-domínio | Regra                         |
| --------- | -------------- | ----------------------------- |
| 004       | A1_COD_MUN     | `U_STCEP(M->A1_CEP,"CODMUN")` |

Também seria necessário alterar a função `STCEP` para aceitar o novo parâmetro:

```advpl
U_STCEP(M->A1_CEP,"CODMUN")
```

A função teria que buscar e retornar o código correto do município junto com os demais dados do endereço.

---

## Conclusão

Os gatilhos do SX7 permitem automatizar preenchimentos no Protheus sem a necessidade de o usuário informar todos os dados manualmente.

Neste exercício foi utilizado o campo `A1_CEP` como origem e a função `U_STCEP()` como regra para preencher automaticamente informações relacionadas ao endereço do cliente.
