PROCEDURE Main()

  LOCAL cNome, dNasc, nPreco, nIdade, nDesconto := 0, nTotal
  LOCAL cEntrada

  ACCEPT "Nome do cliente: " TO cNome

  ACCEPT "Data de nasc (DDMMAAAA): " TO cEntrada
  dNasc := STOD( ;
    SubStr(cEntrada, 5, 4) + ;
    SubStr(cEntrada, 3, 2) + ;
    SubStr(cEntrada, 1, 2) )

  ACCEPT "Preco do produto: " TO cEntrada
  nPreco := Val(cEntrada)

  nIdade := Int((Date() - dNasc) / 365)

  IF nIdade > 60
    nDesconto := nPreco * 0.125
  ENDIF

  nTotal := nPreco - nDesconto

  QOut("--- Resumo ---")
  QOut("Cliente: " + cNome)
  QOut("Idade: " + Str(nIdade, 3))
  QOut("Preco: " + Str(nPreco, 10, 2))
  QOut("Desconto: " + Str(nDesconto, 10, 2))
  QOut("Total: " + Str(nTotal, 10, 2))

RETURN