PROCEDURE Main()

   LOCAL cHora
   LOCAL nInicio := Seconds()

   DO WHILE Seconds() - nInicio < 30

      cHora := ObterHora()
      cHora := FormatarHora(cHora)
      ExibirHora(cHora)

      Inkey(1)

      CLS

   ENDDO

RETURN

FUNCTION ObterHora()

   RETURN Time()

FUNCTION FormatarHora(cHora)

   RETURN cHora

FUNCTION ExibirHora(cHora)

   ? cHora

RETURN NIL