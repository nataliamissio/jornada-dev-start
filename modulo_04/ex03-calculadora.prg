PROCEDURE Main()

   LOCAL nA, nB, cOp, cEntrada

   ACCEPT "Valor 1: " TO cEntrada
   nA := Val(cEntrada)

   ACCEPT "Valor 2: " TO cEntrada
   nB := Val(cEntrada)

   ACCEPT "Operacao (+, -, *, /, ^, R): " TO cOp

   DO CASE

      CASE cOp == "+"
         QOut("Resultado: " + Str(nA + nB, 10, 2))

      CASE cOp == "-"
         QOut("Resultado: " + Str(nA - nB, 10, 2))

      CASE cOp == "*"
         QOut("Resultado: " + Str(nA * nB, 10, 2))

      CASE cOp == "/"
         IF nB == 0
            QOut("Erro: divisao por zero!")
         ELSE
            QOut("Resultado: " + Str(nA / nB, 10, 2))
         ENDIF

      CASE cOp == "^"
         QOut("Resultado: " + Str(nA ^ nB, 10, 2))

      CASE Upper(cOp) == "R"
         IF nA < 0
            QOut("Erro: nao existe raiz quadrada real de numero negativo.")
         ELSE
            QOut("Raiz de A: " + Str(Sqrt(nA), 10, 2))
         ENDIF

      OTHERWISE
         QOut("Operacao invalida.")

   ENDCASE

RETURN