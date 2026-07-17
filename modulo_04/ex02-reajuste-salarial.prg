PROCEDURE Main()
    LOCAL nSalAtual, nNovoSal, nPercentual
    ACCEPT "Salario atual: " TO nSalAtual
    nSalAtual := Val(nSalAtual)

    IF nSalAtual < 1000
        nPercentual := 0.15
    ELSEIF nSalAtual <= 2000
        nPercentual := 0.12
    ELSEIF nSalAtual <= 4000
        nPercentual := 0.08
    ELSE
        nPercentual := 0.05
    ENDIF

    nNovoSal := nSalAtual * (1 + nPercentual)
    QOut("Novo salario com reajuste: " + Str(nNovoSal, 10, 2))
RETURN