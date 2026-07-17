PROCEDURE Main()
    LOCAL nIdade, nDependentes, nValorBase, nTotal
    LOCAL cEntrada

    ACCEPT "Idade do titular: " TO cEntrada
    nIdade := Val(cEntrada)
    
    ACCEPT "Numero de dependentes: " TO cEntrada
    nDependentes := Val(cEntrada)

    // Determina o valor base conforme a faixa etária
    DO CASE
        CASE nIdade <= 25
            nValorBase := 180
        CASE nIdade <= 40
            nValorBase := 260
        CASE nIdade <= 60
            nValorBase := 380
        OTHERWISE
            nValorBase := 520
    ENDCASE

    // Calcula o total: Valor base + (90 * número de dependentes)
    nTotal := nValorBase + (nDependentes * 90)

    QOut("--- Resumo do Plano de Saude ---")
    QOut("Valor mensal base: R$ " + Str(nValorBase, 10, 2))
    QOut("Adicional dependentes: R$ " + Str(nDependentes * 90, 10, 2))
    QOut("VALOR TOTAL: R$ " + Str(nTotal, 10, 2))
RETURN