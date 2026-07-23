PROCEDURE Main()

  LOCAL aCarrinho[100, 2]  // coluna 1: nome, coluna 2: preço
  LOCAL nQtdItens := 0
  LOCAL cNome
  LOCAL cPreco
  LOCAL nPreco
  LOCAL nTotal := 0
  LOCAL i
  LOCAL cContinuar := "S"

  QOut("=== MINI-CARRINHO DE COMPRAS ===")
  QOut("")

  DO WHILE Upper(cContinuar) == "S" .AND. nQtdItens < 100

    ACCEPT "Nome do produto: " TO cNome
    cNome := AllTrim(cNome)

    IF Empty(cNome)
      QOut("Nome nao pode estar vazio!")
      LOOP
    ENDIF

    ACCEPT "Preco: " TO cPreco
    nPreco := Val(cPreco)

    IF nPreco <= 0
      QOut("Preco deve ser maior que zero!")
      LOOP
    ENDIF

    nQtdItens++
    aCarrinho[nQtdItens, 1] := cNome
    aCarrinho[nQtdItens, 2] := nPreco
    nTotal += nPreco

    QOut("Produto adicionado!")
    QOut("")

    ACCEPT "Adicionar outro produto? (S/N): " TO cContinuar
    cContinuar := Upper(AllTrim(cContinuar))

  ENDDO

  QOut("")
  QOut("========== CARRINHO ==========")

  IF nQtdItens == 0
    QOut("Carrinho vazio!")
  ELSE
    FOR i := 1 TO nQtdItens
      QOut(aCarrinho[i, 1] + " - R$ " + LTrim(Str(aCarrinho[i, 2], 10, 2)))
    NEXT

    QOut("")
    QOut("TOTAL: R$ " + LTrim(Str(nTotal, 10, 2)))
  ENDIF

RETURN
