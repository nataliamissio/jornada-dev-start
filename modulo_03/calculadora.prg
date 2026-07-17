FUNCTION Main()
  LOCAL nA, nB
  LOCAL cA, cB

  ACCEPT "Digite o primeiro numero: " TO cA
  ACCEPT "Digite o segundo numero: " TO cB

  nA := Val( cA )
  nB := Val( cB )

  QOut("========================")
  QOut("RESULTADOS")
  QOut("========================")
  QOut("Soma: " + Str( nA + nB, 10, 2 ))
  QOut("Subtracao: " + Str( nA - nB, 10, 2 ))
  QOut("Produto: " + Str( nA * nB, 10, 2 ))

  IF nB <> 0
    QOut("Divisao: " + Str( nA / nB, 10, 2 ))
  ELSE
    QOut("Divisao: nao e possivel dividir por zero.")
  ENDIF

RETURN NIL
