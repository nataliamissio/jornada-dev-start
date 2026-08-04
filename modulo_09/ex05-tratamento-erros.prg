FUNCTION Main()

  LOCAL nA := 10
  LOCAL nB := 0
  LOCAL nRes
  LOCAL bOldError

  // Em Harbour puro, erro de runtime entra no RECOVER via Break(oErro).
  bOldError := ErrorBlock({|oErro| Break(oErro)})

  BEGIN SEQUENCE

    nRes := nA / nB
    QOut("Resultado: " + LTrim(Str(nRes)))

  RECOVER USING oErro

    QOut("Erro capturado: " + oErro:Description)

  END SEQUENCE

  ErrorBlock(bOldError)

  QOut("O programa continua de pe!")

RETURN NIL
