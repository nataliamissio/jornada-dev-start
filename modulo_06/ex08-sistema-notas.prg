PROCEDURE Main()

  LOCAL aAlunos[100, 5]  // coluna 1: nome, colunas 2-5: notas
  LOCAL nQtd
  LOCAL cQtd
  LOCAL i, j
  LOCAL cNome
  LOCAL cNota

  ACCEPT "Quantos alunos? " TO cQtd
  nQtd := Val(cQtd)

  // Leitura dos dados
  FOR i := 1 TO nQtd

    ACCEPT "Nome do aluno " + LTrim(Str(i)) + ": " TO cNome
    aAlunos[i, 1] := cNome

    FOR j := 2 TO 5

      ACCEPT "Nota " + LTrim(Str(j - 1)) + ": " TO cNota
      aAlunos[i, j] := Val(cNota)

    NEXT

  NEXT

  QOut("")
  QOut("========== APROVADOS (media >= 7) ==========")

  FOR i := 1 TO nQtd
    ExibirStatusAluno(aAlunos, i, .T.)
  NEXT


  QOut("")
  QOut("========== REPROVADOS (media < 7) ==========")

  FOR i := 1 TO nQtd
    ExibirStatusAluno(aAlunos, i, .F.)
  NEXT

RETURN


FUNCTION ExibirStatusAluno(aAlunos, nLinha, lAprovado)

  LOCAL nMedia

  nMedia := (aAlunos[nLinha, 2] + aAlunos[nLinha, 3] + ;
    aAlunos[nLinha, 4] + aAlunos[nLinha, 5]) / 4


  IF (lAprovado .AND. nMedia >= 7) .OR. ;
      (!lAprovado .AND. nMedia < 7)

    QOut(aAlunos[nLinha, 1] + " - Media: " + ;
      LTrim(Str(nMedia, 10, 2)))

  ENDIF

RETURN NIL