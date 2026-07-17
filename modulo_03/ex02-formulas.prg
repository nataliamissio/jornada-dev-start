#define PI 3.14159

PROCEDURE Main()

  LOCAL nRaio, nCatetoA, nCatetoB
  LOCAL nPeso, nAltura, cEntrada

  // a. Área do círculo
  ACCEPT "Raio do circulo: " TO cEntrada
  nRaio := Val(cEntrada)

  QOut("Area do circulo: " + Str(PI * (nRaio ^ 2), 10, 2))

  // b. Hipotenusa
  ACCEPT "Cateto A do triangulo: " TO cEntrada
  nCatetoA := Val(cEntrada)

  ACCEPT "Cateto B do triangulo: " TO cEntrada
  nCatetoB := Val(cEntrada)

  QOut("Hipotenusa: " + Str(Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2)), 10, 2))

  // c. IMC
  ACCEPT "Peso (kg): " TO cEntrada
  nPeso := Val(cEntrada)

  ACCEPT "Altura (m): " TO cEntrada
  nAltura := Val(cEntrada)

  QOut("IMC: " + Str(nPeso / (nAltura ^ 2), 10, 2))

RETURN