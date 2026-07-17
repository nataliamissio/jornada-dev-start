PROCEDURE Main()
  LOCAL nN1, nN2, nN3, nN4, nMedia
  LOCAL cEntrada

  ACCEPT "Nota 1: " TO cEntrada; nN1 := Val(cEntrada)
  ACCEPT "Nota 2: " TO cEntrada; nN2 := Val(cEntrada)
  ACCEPT "Nota 3: " TO cEntrada; nN3 := Val(cEntrada)
  ACCEPT "Nota 4: " TO cEntrada; nN4 := Val(cEntrada)

  nMedia := (nN1*1 + nN2*2 + nN3*3 + nN4*4) / (1+2+3+4)

  QOut("Media ponderada: " + Str(nMedia, 10, 2))
RETURN