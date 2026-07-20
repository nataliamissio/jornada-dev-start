PROCEDURE Main()

  LOCAL nNumero
  LOCAL cEntrada

  ACCEPT "Digite um numero: " TO cEntrada
  nNumero := Val(cEntrada)

  WHILE nNumero > 0

    QOut("Dobro: " + Str(nNumero * 2, 10, 2))

    ACCEPT "Digite outro numero: " TO cEntrada
    nNumero := Val(cEntrada)

  ENDDO

RETURN