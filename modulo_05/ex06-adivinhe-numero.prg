PROCEDURE Main()

  LOCAL nNumero
  LOCAL nPalpite
  LOCAL nI
  LOCAL cEntrada

  nNumero := HB_RandomInt(1,100)

  FOR nI := 1 TO 7

    ACCEPT "Tentativa " + Str(nI,2) + ": " TO cEntrada
    nPalpite := Val(cEntrada)

    IF nPalpite == nNumero

      QOut("Parabens! Voce acertou!")
      EXIT

    ELSEIF nPalpite < nNumero

      QOut("O numero secreto e maior.")

    ELSE

      QOut("O numero secreto e menor.")

    ENDIF

  NEXT

  IF nPalpite <> nNumero
    QOut("Suas tentativas acabaram.")
  ENDIF

  QOut("Numero sorteado: " + Str(nNumero,3))

RETURN