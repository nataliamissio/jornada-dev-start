PROCEDURE Main()

  LOCAL aNumeros[10]
  LOCAL nSoma := 0
  LOCAL nMedia
  LOCAL i
  LOCAL cNum

  FOR i := 1 TO Len(aNumeros)
    ACCEPT "Digite o numero " + LTrim(Str(i)) + ": " TO cNum
    aNumeros[i] := Val(cNum)
  NEXT

  FOR i := 1 TO Len(aNumeros)
    nSoma += aNumeros[i]
  NEXT

  nMedia := nSoma / Len(aNumeros)

  ASort(aNumeros)

  QOut("")
  QOut("=== Estatisticas ===")

  QOut("Numeros em ordem crescente:")
  FOR i := 1 TO Len(aNumeros)
    QOut("  " + LTrim(Str(aNumeros[i])))
  NEXT

  QOut("Soma: " + LTrim(Str(nSoma)))
  QOut("Media: " + LTrim(Str(nMedia, 10, 2)))
  QOut("Menor: " + LTrim(Str(aNumeros[1])))
  QOut("Maior: " + LTrim(Str(aNumeros[Len(aNumeros)])))

RETURN