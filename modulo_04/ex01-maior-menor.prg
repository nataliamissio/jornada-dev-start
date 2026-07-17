PROCEDURE Main()
    LOCAL nVal1, nVal2
    ACCEPT "Primeiro valor: " TO nVal1
    ACCEPT "Segundo valor: "  TO nVal2
    nVal1 := Val(nVal1); nVal2 := Val(nVal2)

    IF nVal1 == nVal2
        QOut("Os valores sao iguais.")
    ELSEIF nVal1 > nVal2
        QOut("Maior: " + Str(nVal1) + " | Menor: " + Str(nVal2))
    ELSE
        QOut("Maior: " + Str(nVal2) + " | Menor: " + Str(nVal1))
    ENDIF
RETURN