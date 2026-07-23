PROCEDURE Main()

  LOCAL aDias := { "Segunda-feira", "Terca-feira", "Quarta-feira", ;
    "Quinta-feira", "Sexta-feira", "Sabado", "Domingo" }
  LOCAL nDia

  ACCEPT "Digite um numero de 1 a 7: " TO nDia
  nDia := Val(nDia)

  IF nDia < 1 .OR. nDia > 7
    QOut("Numero invalido! Digite um valor entre 1 e 7.")
  ELSE
    QOut("Dia " + LTrim(Str(nDia)) + ": " + aDias[nDia])
  ENDIF

RETURN
