# Módulo 7 — Exercício 4: Campo Customizado na SA1

## Descrição do Exercício

Criar um campo customizado na tabela `SA1` (Cadastro de Clientes), seguindo o mesmo padrão utilizado em aula com o campo `A1_VOVO`, utilizando apenas o Configurador (`SIGACFG`), sem a necessidade de desenvolver código AdvPL.

---

## Definição do Campo (SX3)

| Campo          | Tipo      | Tamanho | Decimal | Título  | Observação                                             |
| :------------- | :-------- | :-----: | :-----: | :------ | :----------------------------------------------------- |
| **A1_XAPELID** | Caractere |    30   |    0    | Apelido | Campo customizado para armazenar o apelido do cliente. |

O prefixo **`X`** em `A1_XAPELID` segue a convenção do Protheus para identificar campos customizados adicionados pelo desenvolvedor em tabelas padrão do sistema, reduzindo a possibilidade de conflitos com futuras atualizações do ERP.

---

## a. Cadastro do Campo no Configurador (SX3)

1. Abrir o **SmartClient** e acessar o módulo **SIGACFG (Configurador)**.

2. Navegar até:

   `Base de Dados` → `Dicionário` → `Base de Dados`

3. Acessar o **Dicionário de Dados**.

4. Localizar a tabela **SA1 (Cadastro de Clientes)**.

5. Selecionar a tabela e clicar em **Alterar**.

6. Clicar em **Incluir** para cadastrar um novo campo.

### Dados do Campo

**Aba Campo**

* **Campo:** `A1_XAPELID`
* **Tipo:** Caractere
* **Tamanho:** 30
* **Decimal:** 0
* **Contexto:** Real
* **Propriedade:** Alterar

**Aba Informações**

* **Título:** Apelido
* **Descrição:** Apelido do Cliente

Após preencher as informações, salvar o novo campo no dicionário de dados.

---

## b. Validação no SmartClient

1. Abrir o **SmartClient**.

2. Acessar o módulo **SIGAMDI**.

3. Navegar até:

   `Atualizações` → `Cadastros` → `Clientes`

4. Selecionar um cliente existente ou iniciar um novo cadastro.

5. Confirmar que o campo **A1_XAPELID (Apelido)** está disponível para preenchimento na tela de cadastro.

---

## Observação

Como a **SA1** é uma tabela nativa do Protheus e já faz parte do dicionário de dados do sistema, não foi necessário criar uma nova tabela, criar índices ou executar a rotina de fórmulas utilizada no Exercício 3.

Foi necessário apenas adicionar o novo campo na estrutura da tabela e atualizar o dicionário para que o SmartClient reconhecesse automaticamente a alteração.

---

## Conclusão

O exercício demonstrou como realizar uma customização em uma tabela padrão do Protheus utilizando apenas o Configurador. Após a inclusão do campo `A1_XAPELID`, a tabela `SA1` passou a disponibilizar o novo atributo para utilização no cadastro de clientes, sem necessidade de desenvolvimento em AdvPL.
