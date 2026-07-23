// ==========================================================
// CONTROLE DE ESTOQUE SIMPLIFICADO
// Sistema integrador: Arrays + Funcoes + Loop
// ==========================================================

#include "estoque_lib.prg"

PROCEDURE Main()

  LOCAL aProdutos := {}
  LOCAL nOpcao
  LOCAL cOpcao
  LOCAL cCodigo, cNome
  LOCAL nQtd, nPreco, nValor
  LOCAL nPos

  DO WHILE .T.

    ExibirMenu()
    ACCEPT "Escolha uma opcao: " TO cOpcao
    nOpcao := Val(cOpcao)

    DO CASE

      CASE nOpcao == 1
        QOut("")
        ACCEPT "Codigo do produto: " TO cCodigo
        cCodigo := AllTrim(cCodigo)

        IF Empty(cCodigo)
          QOut("Codigo nao pode estar vazio!")
          LOOP
        ENDIF

        ACCEPT "Nome do produto: " TO cNome
        cNome := AllTrim(cNome)

        IF Empty(cNome)
          QOut("Nome nao pode estar vazio!")
          LOOP
        ENDIF

        ACCEPT "Quantidade inicial: " TO cOpcao
        nQtd := Val(cOpcao)

        ACCEPT "Preco unitario: " TO cOpcao
        nPreco := Val(cOpcao)

        IF nQtd < 0 .OR. nPreco <= 0
          QOut("Quantidade e preco invalidos!")
          LOOP
        ENDIF

        CadastrarProduto(aProdutos, cCodigo, cNome, nQtd, nPreco)

      CASE nOpcao == 2
        ListarProdutos(aProdutos)

      CASE nOpcao == 3
        QOut("")
        ACCEPT "Codigo do produto: " TO cCodigo
        cCodigo := AllTrim(cCodigo)

        ACCEPT "Quantidade de entrada: " TO cOpcao
        nValor := Val(cOpcao)

        EntradaEstoque(aProdutos, cCodigo, nValor)

      CASE nOpcao == 4
        QOut("")
        ACCEPT "Codigo do produto: " TO cCodigo
        cCodigo := AllTrim(cCodigo)

        ACCEPT "Quantidade de saida: " TO cOpcao
        nValor := Val(cOpcao)

        SaidaEstoque(aProdutos, cCodigo, nValor)

      CASE nOpcao == 5
        QOut("")
        ACCEPT "Codigo do produto: " TO cCodigo
        cCodigo := AllTrim(cCodigo)

        nPos := BuscarProduto(aProdutos, cCodigo)
        IF nPos > 0
          QOut("")
          QOut("Produto encontrado na posicao " + LTrim(Str(nPos)) + ":")
          QOut("  Codigo: " + aProdutos[nPos, 1])
          QOut("  Nome: " + aProdutos[nPos, 2])
          QOut("  Quantidade: " + LTrim(Str(aProdutos[nPos, 3])))
          QOut("  Preco: R$ " + LTrim(Str(aProdutos[nPos, 4], 10, 2)))
        ELSE
          QOut("Produto nao encontrado!")
        ENDIF

      CASE nOpcao == 6
        RelatorioEstoque(aProdutos)

      CASE nOpcao == 0
        QOut("Saindo do sistema. Ate logo!")
        EXIT

        OTHERWISE
        QOut("Opcao invalida!")

    ENDCASE

    QOut("")
    ACCEPT "Pressione ENTER para continuar..." TO cOpcao

  ENDDO

RETURN


PROCEDURE ExibirMenu()

  QOut("")
  QOut("===== CONTROLE DE ESTOQUE =====")
  QOut("1 - Cadastrar produto")
  QOut("2 - Listar produtos")
  QOut("3 - Entrada de estoque")
  QOut("4 - Saida de estoque")
  QOut("5 - Buscar produto por codigo")
  QOut("6 - Relatorio de estoque")
  QOut("0 - Sair")
  QOut("================================")

RETURN
