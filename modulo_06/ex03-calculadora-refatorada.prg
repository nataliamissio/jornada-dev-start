PROCEDURE Main()

  LOCAL nA
  LOCAL nB
  LOCAL cOp
  LOCAL xResultado

  nA := LerNumero("Valor 1: ")
  nB := LerNumero("Valor 2: ")

  ACCEPT "Operacao (+, -, *, /, ^, R): " TO cOp

  xResultado := Calcular(nA, nB, cOp)

  MostrarResultado(xResultado)

RETURN

FUNCTION LerNumero(cMensagem)

  LOCAL cEntrada

  ACCEPT cMensagem TO cEntrada

RETURN Val(cEntrada)

FUNCTION Calcular(nA, nB, cOp)

  DO CASE

    CASE cOp == "+"
      RETURN nA + nB

    CASE cOp == "-"
      RETURN nA - nB

    CASE cOp == "*"
      RETURN nA * nB

    CASE cOp == "/"
      IF nB == 0
        RETURN .F.
      ENDIF
      RETURN nA / nB

    CASE cOp == "^"
      RETURN nA ^ nB

    CASE Upper(cOp) == "R"
      IF nA < 0
        RETURN .F.
      ENDIF
      RETURN Sqrt(nA)

  ENDCASE

RETURN .F.

FUNCTION MostrarResultado(xResultado)

  IF ValType(xResultado) == "N"
    QOut("Resultado: " + Str(xResultado, 10, 2))
  ELSE
    QOut("Erro na operacao.")
  ENDIF

RETURN NIL