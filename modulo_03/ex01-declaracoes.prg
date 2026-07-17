PROCEDURE Main()
  LOCAL cNomeFunc := "Natalia"
  LOCAL nSalarioBruto := 5500.00
  LOCAL lAtivo := .T.
  LOCAL dAdmissao := Date()
  LOCAL cDepto := "TI"

  QOut("Funcionario: " + cNomeFunc)
  QOut("Salario: " + Str(nSalarioBruto, 10, 2))
  QOut("Ativo: " + If(lAtivo, "Sim", "Nao"))
  QOut("Admissao: " + DToC(dAdmissao))
  QOut("Depto: " + cDepto)
RETURN