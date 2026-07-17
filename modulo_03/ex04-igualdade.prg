PROCEDURE Main()
  LOCAL cTexto1 := "Harbour"
  LOCAL cTexto2 := "Harb"
    
  // O sinal = compara até o tamanho da menor string
  QOut("Comparacao com =: " + If(cTexto1 = cTexto2, ".T.", ".F.")) 
    
  // O sinal == exige que sejam idênticas
  QOut("Comparacao com ==: " + If(cTexto1 == cTexto2, ".T.", ".F."))
RETURN