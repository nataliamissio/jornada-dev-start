# Módulo 7 — Exercício 3: Recriando a Tabela ZA1 no Configurador

## Descrição do Exercício

Recriar a tabela `ZA1` (Cadastro de Pets) do zero no Configurador (`SIGACFG`), aplicando a estrutura de campos necessária, criando o índice, realizando a atualização da estrutura e utilizando uma fórmula para efetivar o reconhecimento da tabela no banco de dados.

---

## Passo a Passo Executado

### Passo 1: Acesso ao Configurador

1. Abrir o SmartClient e acessar o módulo **SIGACFG (Configurador)**.
2. Navegar pelo menu principal até:
   `Base de Dados` > `Dicionário` > `Base de Dados`.
3. Acessar o **Dicionário de Dados** para realizar o cadastro da nova tabela.

### Passo 2: Cadastro da Tabela no SX2

1. Na listagem de tabelas, clicar no botão de **Incluir**.
2. Preencher os dados principais da nova tabela customizada:

   * **Prefixo / Tabela:** `ZA1`
   * **Descrição:** `Cadastro de Pets`
   * **Path:** `\data\`
3. Salvar o cadastro da tabela.
4. O Protheus gera automaticamente o campo padrão de filial:
   `ZA1_FILIAL`.

### Passo 3: Criação dos Campos no SX3

Com a tabela `ZA1` cadastrada, foram incluídos individualmente os campos necessários para a estrutura do cadastro.

* **ZA1_COD**

  * **Tipo:** Caractere
  * **Tamanho:** 6
  * **Título:** Código

* **ZA1_NOME**

  * **Tipo:** Caractere
  * **Tamanho:** 40
  * **Título:** Nome do Pet

* **ZA1_RACA**

  * **Tipo:** Caractere
  * **Tamanho:** 30
  * **Título:** Raça do Pet

* **ZA1_DTNASC**

  * **Tipo:** Data
  * **Tamanho:** 8
  * **Título:** Dt. Nasc.

O campo `ZA1_FILIAL` não precisou ser criado manualmente, pois foi gerado automaticamente pelo Protheus durante a criação da tabela.

### Passo 4: Atualização da Estrutura do Dicionário

Após o cadastro da tabela e dos campos, foi acessada a rotina de **Atualização de Estrutura do Dicionário de Dados**.

O sistema apresentou as alterações realizadas, incluindo:

* `ZA1` — Tabela incluída
* `ZA1_FILIAL` — Campo incluído
* `ZA1_COD` — Campo incluído
* `ZA1_NOME` — Campo incluído
* `ZA1_RACA` — Campo incluído
* `ZA1_DTNASC` — Campo incluído

Após o processamento, ao realizar uma nova tentativa de atualização, o sistema informou que não havia mais alterações pendentes.

### Passo 5: Criação do Índice

Foi criado um **índice para a tabela `ZA1`**, conforme solicitado no exercício.

A criação do índice faz parte da configuração da estrutura da tabela e permite que os registros sejam organizados e localizados de acordo com a chave definida.

### Passo 6: Criação da Fórmula

Para que a tabela fosse reconhecida e disponibilizada corretamente no banco de dados, foi criada uma fórmula utilizando a função:

```advpl
dbSelectArea("ZA1")
```

Essa função realiza a seleção da área de trabalho correspondente à tabela `ZA1`.

Após a execução desse procedimento, a tabela passou a aparecer no banco de dados.

### Passo 7: Conferência no MPSDU

1. Abrir o utilitário **MPSDU**.
2. Acessar o banco de dados utilizado pelo ambiente.
3. Localizar a tabela `ZA1`.
4. Confirmar a existência da tabela e sua estrutura.

A tabela `ZA1` passou a aparecer corretamente no banco de dados, permitindo a conferência de sua estrutura.

A estrutura final esperada é:

```text
ZA1_FILIAL
ZA1_COD
ZA1_NOME
ZA1_RACA
ZA1_DTNASC
```

---

## Resultado Final

Ao final do exercício, a tabela customizada `ZA1` foi recriada no ambiente Protheus, contendo sua estrutura de campos, índice e configuração necessária para seu reconhecimento no banco de dados.

A tabela `ZA1` foi localizada no banco de dados através do MPSDU, confirmando a conclusão da etapa de criação e disponibilização da estrutura.

---

## Dificuldades Encontradas Durante o Processo

* **Navegação inicial nos menus:** Houve dificuldade para localizar o caminho correto dentro do Configurador (`SIGACFG`), principalmente devido às diferenças entre a interface utilizada no ambiente e o material de referência.

* **Localização dos campos:** Inicialmente houve dificuldade para encontrar onde realizar o cadastro dos campos da tabela, pois a opção não aparecia diretamente no menu esperado.

* **Caminho (Path) incorreto:** Durante o cadastro da tabela, ocorreu um erro relacionado ao caminho informado. O problema foi solucionado utilizando o padrão:
  `\data\`

* **Salvamento da tabela:** Houve dúvida sobre o procedimento correto para salvar a tabela, sendo identificado posteriormente que o cadastro deveria ser confirmado através do botão de gravação.

* **Atualização do dicionário:** Foi necessário entender a diferença entre cadastrar as alterações no dicionário e efetivar a atualização da estrutura.

* **Localização da tabela no MPSDU:** Inicialmente a tabela `ZA1` não aparecia no banco de dados, mesmo após o cadastro da estrutura. Foi necessário identificar o procedimento adicional envolvendo a criação do índice e da fórmula.

* **Reconhecimento da tabela:** A criação da fórmula utilizando `dbSelectArea("ZA1")` foi necessária para que a tabela passasse a aparecer no banco de dados.

* **Conferência final:** Após realizar os procedimentos adicionais, a tabela `ZA1` passou a aparecer corretamente no banco de dados, permitindo a continuidade da validação da estrutura.
# Módulo 7 — Exercício 3: Recriando a Tabela ZA1 no Configurador

## Descrição do Exercício

Recriar a tabela `ZA1` (Cadastro de Pets) do zero no Configurador (`SIGACFG`), aplicando a estrutura de campos necessária, criando o índice, realizando a atualização da estrutura e utilizando uma fórmula para efetivar o reconhecimento da tabela no banco de dados.

---

## Passo a Passo Executado

### Passo 1: Acesso ao Configurador

1. Abrir o SmartClient e acessar o módulo **SIGACFG (Configurador)**.
2. Navegar pelo menu principal até:
   `Base de Dados` > `Dicionário` > `Base de Dados`.
3. Acessar o **Dicionário de Dados** para realizar o cadastro da nova tabela.

### Passo 2: Cadastro da Tabela no SX2

1. Na listagem de tabelas, clicar no botão de **Incluir**.
2. Preencher os dados principais da nova tabela customizada:

   * **Prefixo / Tabela:** `ZA1`
   * **Descrição:** `Cadastro de Pets`
   * **Path:** `\data\`
3. Salvar o cadastro da tabela.
4. O Protheus gera automaticamente o campo padrão de filial:
   `ZA1_FILIAL`.

### Passo 3: Criação dos Campos no SX3

Com a tabela `ZA1` cadastrada, foram incluídos individualmente os campos necessários para a estrutura do cadastro.

* **ZA1_COD**

  * **Tipo:** Caractere
  * **Tamanho:** 6
  * **Título:** Código

* **ZA1_NOME**

  * **Tipo:** Caractere
  * **Tamanho:** 40
  * **Título:** Nome do Pet

* **ZA1_RACA**

  * **Tipo:** Caractere
  * **Tamanho:** 30
  * **Título:** Raça do Pet

* **ZA1_DTNASC**

  * **Tipo:** Data
  * **Tamanho:** 8
  * **Título:** Dt. Nasc.

O campo `ZA1_FILIAL` não precisou ser criado manualmente, pois foi gerado automaticamente pelo Protheus durante a criação da tabela.

### Passo 4: Atualização da Estrutura do Dicionário

Após o cadastro da tabela e dos campos, foi acessada a rotina de **Atualização de Estrutura do Dicionário de Dados**.

O sistema apresentou as alterações realizadas, incluindo:

* `ZA1` — Tabela incluída
* `ZA1_FILIAL` — Campo incluído
* `ZA1_COD` — Campo incluído
* `ZA1_NOME` — Campo incluído
* `ZA1_RACA` — Campo incluído
* `ZA1_DTNASC` — Campo incluído

Após o processamento, ao realizar uma nova tentativa de atualização, o sistema informou que não havia mais alterações pendentes.

### Passo 5: Criação do Índice

Foi criado um **índice para a tabela `ZA1`**, conforme solicitado no exercício.

A criação do índice faz parte da configuração da estrutura da tabela e permite que os registros sejam organizados e localizados de acordo com a chave definida.

### Passo 6: Criação da Fórmula

Para que a tabela fosse reconhecida e disponibilizada corretamente no banco de dados, foi criada uma fórmula utilizando a função:

```advpl
dbSelectArea("ZA1")
```

Essa função realiza a seleção da área de trabalho correspondente à tabela `ZA1`.

Após a execução desse procedimento, a tabela passou a aparecer no banco de dados.

### Passo 7: Conferência no MPSDU

1. Abrir o utilitário **MPSDU**.
2. Acessar o banco de dados utilizado pelo ambiente.
3. Localizar a tabela `ZA1`.
4. Confirmar a existência da tabela e sua estrutura.

A tabela `ZA1` passou a aparecer corretamente no banco de dados, permitindo a conferência de sua estrutura.

A estrutura final esperada é:

```text
ZA1_FILIAL
ZA1_COD
ZA1_NOME
ZA1_RACA
ZA1_DTNASC
```

---

## Resultado Final

Ao final do exercício, a tabela customizada `ZA1` foi recriada no ambiente Protheus, contendo sua estrutura de campos, índice e configuração necessária para seu reconhecimento no banco de dados.

A tabela `ZA1` foi localizada no banco de dados através do MPSDU, confirmando a conclusão da etapa de criação e disponibilização da estrutura.

---

## Dificuldades Encontradas Durante o Processo

* **Navegação inicial nos menus:** Houve dificuldade para localizar o caminho correto dentro do Configurador (`SIGACFG`), principalmente devido às diferenças entre a interface utilizada no ambiente e o material de referência.

* **Localização dos campos:** Inicialmente houve dificuldade para encontrar onde realizar o cadastro dos campos da tabela, pois a opção não aparecia diretamente no menu esperado.

* **Caminho (Path) incorreto:** Durante o cadastro da tabela, ocorreu um erro relacionado ao caminho informado. O problema foi solucionado utilizando o padrão:
  `\data\`

* **Salvamento da tabela:** Houve dúvida sobre o procedimento correto para salvar a tabela, sendo identificado posteriormente que o cadastro deveria ser confirmado através do botão de gravação.

* **Atualização do dicionário:** Foi necessário entender a diferença entre cadastrar as alterações no dicionário e efetivar a atualização da estrutura.

* **Localização da tabela no MPSDU:** Inicialmente a tabela `ZA1` não aparecia no banco de dados, mesmo após o cadastro da estrutura. Foi necessário identificar o procedimento adicional envolvendo a criação do índice e da fórmula.

* **Reconhecimento da tabela:** A criação da fórmula utilizando `dbSelectArea("ZA1")` foi necessária para que a tabela passasse a aparecer no banco de dados.

* **Conferência final:** Após realizar os procedimentos adicionais, a tabela `ZA1` passou a aparecer corretamente no banco de dados, permitindo a continuidade da validação da estrutura.
