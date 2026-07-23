PROCEDURE Main()

  LOCAL cJogador
  LOCAL cCPU
  LOCAL cResultado
  LOCAL cContinuar := "S"

  DO WHILE Upper(cContinuar) == "S"

    ACCEPT "Escolha (PEDRA, PAPEL ou TESOURA): " TO cJogador
    cJogador := Upper(AllTrim(cJogador))

    IF !ValidarJogada(cJogador)
      QOut("Jogada invalida!")
    ELSE

      cCPU := SortearJogadaCPU()

      QOut("Computador: " + cCPU)

      cResultado := DefinirVencedor(cJogador, cCPU)

      QOut(cResultado)

    ENDIF

    ACCEPT "Jogar novamente? (S/N): " TO cContinuar
    cContinuar := Upper(AllTrim(cContinuar))

    CLS

  ENDDO

RETURN


FUNCTION SortearJogadaCPU()

  LOCAL nSorteio

  nSorteio := Int(hb_Random() * 3) + 1

  DO CASE
    CASE nSorteio == 1
      RETURN "PEDRA"

    CASE nSorteio == 2
      RETURN "PAPEL"

      OTHERWISE
      RETURN "TESOURA"
  ENDCASE

RETURN ""


FUNCTION ValidarJogada(cJogada)

  RETURN cJogada == "PEDRA" .OR. ;
    cJogada == "PAPEL" .OR. ;
    cJogada == "TESOURA"


FUNCTION DefinirVencedor(cJogador, cCPU)

  IF cJogador == cCPU
    RETURN "Empate!"
  ENDIF

  DO CASE

    CASE cJogador == "PEDRA" .AND. cCPU == "TESOURA"
      RETURN "Voce venceu!"

    CASE cJogador == "PAPEL" .AND. cCPU == "PEDRA"
      RETURN "Voce venceu!"

    CASE cJogador == "TESOURA" .AND. cCPU == "PAPEL"
      RETURN "Voce venceu!"

      OTHERWISE
      RETURN "Computador venceu!"

  ENDCASE

RETURN ""