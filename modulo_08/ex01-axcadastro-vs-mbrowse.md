# Módulo 8 — Exercício 1: AxCadastro × mBrowse

## Descrição do Exercício

Responder às questões conceituais sobre as rotinas **AxCadastro** e **mBrowse**, utilizadas no desenvolvimento de cadastros no Protheus.

---

## Respostas

### a. Quando você usaria AxCadastro e quando usaria mBrowse? Dê um exemplo de cada.

O **AxCadastro** é indicado quando se deseja criar rapidamente um cadastro padrão do Protheus, aproveitando a estrutura já definida no dicionário de dados. Ele disponibiliza automaticamente as operações de inclusão, alteração, exclusão e consulta dos registros, exigindo pouco código.

Já o **mBrowse** é utilizado quando há necessidade de personalizar a tela de consulta, adicionando filtros, legendas, botões personalizados ou outras funcionalidades específicas. Um exemplo é um cadastro de pets com linhas coloridas de acordo com a idade dos animais.

---

### b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.

O **mBrowse** oferece recursos que não estão disponíveis diretamente no **AxCadastro**, como:

* Permitir a criação de filtros personalizados para exibir apenas determinados registros.
* Exibir legendas coloridas (`aColors`) para destacar informações conforme regras definidas pelo desenvolvedor.
* Adicionar botões personalizados (`aRotina`) para executar funções específicas dentro da rotina.

---

### c. Na configuração de legendas (`aColors`), por que a regra `.T.` deve ficar por último?

A regra `.T.` representa uma condição que sempre será verdadeira. Se ela for posicionada antes das demais regras, todas as linhas atenderão essa condição e as regras seguintes nunca serão avaliadas. Por isso, ela deve ser utilizada como condição padrão e permanecer sempre na última posição da lista.

---

### d. Qual a diferença entre um campo Virtual (`X3_RELACAO`) e um gatilho (`SX7`) para preencher o nome do cliente?

Um **campo Virtual** obtém a informação de outra tabela apenas para exibição, sem gravar esse valor fisicamente no banco de dados. O conteúdo é consultado sempre que necessário por meio da relação configurada no dicionário.

Já um **gatilho (SX7)** executa uma ação automaticamente quando um evento ocorre, como o preenchimento de um campo. Ele pode copiar ou atualizar informações em outros campos da tabela durante a digitação ou gravação dos dados.

---

## Conclusão

O **AxCadastro** é uma solução prática para desenvolver cadastros padrão utilizando a estrutura já existente no Protheus, enquanto o **mBrowse** oferece maior flexibilidade para personalizações. Além disso, compreender a diferença entre campos virtuais e gatilhos é essencial para escolher a melhor estratégia de implementação de acordo com a necessidade da aplicação.
