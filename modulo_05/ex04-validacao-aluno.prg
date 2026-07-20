PROCEDURE Main()

  LOCAL cNome := ""
  LOCAL cDisc := ""
  LOCAL cEntrada
  LOCAL nNota1, nNota2, nMedia

  // Nome
  WHILE Len(Trim(cNome)) == 0
    ACCEPT "Nome do aluno: " TO cNome
  ENDDO

  // Disciplina
  WHILE .T.
    ACCEPT "Disciplina (3 letras): " TO cDisc

    IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
      EXIT
    ELSE
      QOut("Disciplina invalida.")
    ENDIF
  ENDDO

  // Nota 1
  WHILE .T.
    ACCEPT "Nota 1: " TO cEntrada
    nNota1 := Val(cEntrada)

    IF nNota1 >= 0 .AND. nNota1 <= 10
      EXIT
    ELSE
      QOut("Nota invalida.")
    ENDIF
  ENDDO

  // Nota 2
  WHILE .T.
    ACCEPT "Nota 2: " TO cEntrada
    nNota2 := Val(cEntrada)

    IF nNota2 >= 0 .AND. nNota2 <= 10
      EXIT
    ELSE
      QOut("Nota invalida.")
    ENDIF
  ENDDO

  nMedia := (nNota1 + nNota2) / 2

  QOut("--- Resultado ---")
  QOut("Nome: " + cNome)
  QOut("Disciplina: " + cDisc)
  QOut("Media: " + Str(nMedia,10,2))

RETURN