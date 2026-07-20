PROCEDURE Main()

  LOCAL cNome := ""
  LOCAL cDisc := ""
  LOCAL cEntrada
  LOCAL cResposta
  LOCAL nNota1, nNota2, nMedia

  WHILE .T.

    QOut("----------------------------------------")
    QOut("      CADASTRO DE NOVO ALUNO")
    QOut("----------------------------------------")

    // Nome
    WHILE Len(Trim(cNome)) == 0
      ACCEPT "Nome do aluno: " TO cNome

      IF Len(Trim(cNome)) == 0
        QOut("Erro: O nome nao pode ser vazio.")
      ENDIF
    ENDDO

    // Disciplina
    WHILE .T.

      ACCEPT "Disciplina (3 letras maiusculas): " TO cDisc

      IF Len(Trim(cDisc)) == 3 .AND. Trim(cDisc) == Upper(Trim(cDisc))
        EXIT
      ELSE
        QOut("Erro: Disciplina invalida.")
      ENDIF

    ENDDO

    // Nota 1
    WHILE .T.

      ACCEPT "Nota 1: " TO cEntrada
      nNota1 := Val(cEntrada)

      IF nNota1 >= 0 .AND. nNota1 <= 10
        EXIT
      ELSE
        QOut("Erro: Nota invalida.")
      ENDIF

    ENDDO

    // Nota 2
    WHILE .T.

      ACCEPT "Nota 2: " TO cEntrada
      nNota2 := Val(cEntrada)

      IF nNota2 >= 0 .AND. nNota2 <= 10
        EXIT
      ELSE
        QOut("Erro: Nota invalida.")
      ENDIF

    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    QOut("")
    QOut("--- Resultado ---")
    QOut("Aluno: " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Media: " + Str(nMedia, 10, 2))
    QOut("")

    ACCEPT "Deseja calcular outro? (S/N): " TO cResposta

    IF Upper(Trim(cResposta)) <> "S"
      EXIT
    ENDIF

    cNome := ""
    cDisc := ""

  ENDDO

  QOut("Programa encerrado!")

RETURN