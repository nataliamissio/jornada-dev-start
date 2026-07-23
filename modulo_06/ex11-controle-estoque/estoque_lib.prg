// ==========================================================
// BIBLIOTECA: Operacoes de Estoque
// ==========================================================


FUNCTION CadastrarProduto(aProdutos, cCodigo, cNome, nQtd, nPreco)
  LOCAL aProduto := { cCodigo, cNome, nQtd, nPreco }

  IF BuscarProduto(aProdutos, cCodigo) > 0
    QOut("Erro: Produto com codigo " + cCodigo + " ja existe!")
    RETURN .F.
  ENDIF

  AADD(aProdutos, aProduto)
  QOut("Produto cadastrado com sucesso!")
RETURN .T.

FUNCTION ListarProdutos(aProdutos)
  LOCAL i

  IF Len(aProdutos) == 0
    QOut("Nenhum produto cadastrado.")
    RETURN .F.
  ENDIF

  QOut("")
  QOut("========== LISTA DE PRODUTOS ==========")
  FOR i := 1 TO Len(aProdutos)
    QOut("Codigo: " + aProdutos[i, 1])
    QOut("  Nome: " + aProdutos[i, 2])
    QOut("  Quantidade: " + LTrim(Str(aProdutos[i, 3])))
    QOut("  Preco: R$ " + LTrim(Str(aProdutos[i, 4], 10, 2)))
    QOut("")
  NEXT

RETURN .T.

FUNCTION BuscarProduto(aProdutos, cCodigo)
  LOCAL i

  FOR i := 1 TO Len(aProdutos)
    IF aProdutos[i, 1] == cCodigo
      RETURN i
    ENDIF
  NEXT

RETURN 0

FUNCTION EntradaEstoque(aProdutos, cCodigo, nQtdEntrada)
  LOCAL nPosicao := BuscarProduto(aProdutos, cCodigo)

  IF nPosicao == 0
    QOut("Erro: Produto nao encontrado!")
    RETURN .F.
  ENDIF

  IF nQtdEntrada <= 0
    QOut("Erro: Quantidade deve ser maior que zero!")
    RETURN .F.
  ENDIF

  aProdutos[nPosicao, 3] += nQtdEntrada
  QOut("Entrada registrada! Nova quantidade: " + LTrim(Str(aProdutos[nPosicao, 3])))
RETURN .T.

FUNCTION SaidaEstoque(aProdutos, cCodigo, nQtdSaida)
  LOCAL nPosicao := BuscarProduto(aProdutos, cCodigo)

  IF nPosicao == 0
    QOut("Erro: Produto nao encontrado!")
    RETURN .F.
  ENDIF

  IF nQtdSaida <= 0
    QOut("Erro: Quantidade deve ser maior que zero!")
    RETURN .F.
  ENDIF

  IF aProdutos[nPosicao, 3] < nQtdSaida
    QOut("Erro: Estoque insuficiente! Disponivel: " + LTrim(Str(aProdutos[nPosicao, 3])))
    RETURN .F.
  ENDIF

  aProdutos[nPosicao, 3] -= nQtdSaida
  QOut("Saida registrada! Nova quantidade: " + LTrim(Str(aProdutos[nPosicao, 3])))
RETURN .T.

FUNCTION RelatorioEstoque(aProdutos)
  LOCAL i
  LOCAL nValorTotal := 0
  LOCAL nValorProduto

  IF Len(aProdutos) == 0
    QOut("Nenhum produto cadastrado.")
    RETURN .F.
  ENDIF

  QOut("")
  QOut("========== RELATORIO DE ESTOQUE ==========")
  FOR i := 1 TO Len(aProdutos)
    nValorProduto := aProdutos[i, 3] * aProdutos[i, 4]
    nValorTotal += nValorProduto

    QOut(aProdutos[i, 1] + " | " + aProdutos[i, 2])
    QOut("  Qtd: " + LTrim(Str(aProdutos[i, 3])) + " | Preco: R$ " + ;
      LTrim(Str(aProdutos[i, 4], 10, 2)))
    QOut("  Valor em estoque: R$ " + LTrim(Str(nValorProduto, 10, 2)))
    QOut("")
  NEXT

  QOut("VALOR TOTAL DO ESTOQUE: R$ " + LTrim(Str(nValorTotal, 10, 2)))
RETURN .T.
