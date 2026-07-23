PROCEDURE Main()

  LOCAL aNumeros[10]
  LOCAL i
  LOCAL cNum

  QOut("=== BUBBLE SORT MANUAL ===")
  QOut("")

  // Leitura dos números
  FOR i := 1 TO 10
    ACCEPT "Digite o numero " + LTrim(Str(i)) + ": " TO cNum
    aNumeros[i] := Val(cNum)
  NEXT

  QOut("")
  QOut("Array ANTES de ordenar:")
  ExibirArray(aNumeros)

  // Ordena usando Bubble Sort
  BubbleSort(aNumeros)

  QOut("")
  QOut("Array DEPOIS de ordenar:")
  ExibirArray(aNumeros)

RETURN


FUNCTION BubbleSort(aVetor)

  LOCAL nTam := Len(aVetor)
  LOCAL i, j
  LOCAL nTemp
  LOCAL lTrocou

  // Dois loops: i percorre as passagens, j percorre os vizinhos
  FOR i := 1 TO nTam - 1
    lTrocou := .F.

    FOR j := 1 TO nTam - i
      // Se o elemento atual é maior que o próximo, troca
      IF aVetor[j] > aVetor[j + 1]
        nTemp := aVetor[j]
        aVetor[j] := aVetor[j + 1]
        aVetor[j + 1] := nTemp
        lTrocou := .T.
      ENDIF
    NEXT

    // Otimização: se nenhuma troca ocorreu, vetor já está ordenado
    IF !lTrocou
      EXIT
    ENDIF
  NEXT

RETURN aVetor


FUNCTION ExibirArray(aVetor)

  LOCAL i

  FOR i := 1 TO Len(aVetor)
    QOut("  " + LTrim(Str(aVetor[i])))
  NEXT

RETURN .T.
