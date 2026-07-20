PROCEDURE Main()

  LOCAL nNumero, nTotal := 0, nQtd := 0
  LOCAL cEntrada

  ACCEPT "Digite um numero (0 para sair): " TO cEntrada
  nNumero := Val(cEntrada)

  WHILE nNumero <> 0

    nTotal += nNumero
    nQtd++

    ACCEPT "Digite um numero (0 para sair): " TO cEntrada
    nNumero := Val(cEntrada)

  ENDDO

  QOut("Soma: " + Str(nTotal,10,2))
  QOut("Quantidade: " + Str(nQtd,10))

RETURN