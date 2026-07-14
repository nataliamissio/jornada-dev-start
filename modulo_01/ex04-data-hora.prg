FUNCTION Main()
   LOCAL cNome := "Natalia"
   LOCAL cCidade := "Sao Paulo - SP"
   LOCAL cCurso := "Harbour/ADVPL"
   LOCAL dData := Date()
   LOCAL cHora := Time()

   QOut("=======================")
   QOut("FICHA DE APRESENTACAO")
   QOut("=======================")

   QOut("Nome: " + cNome)
   QOut("Cidade: " + cCidade)
   QOut("Curso: " + cCurso)
   
   QOut("=======================")
   QOut("Data: " + DToC(dData))
   QOut("Hora: " + cHora)
   QOut("=======================")

RETURN NIL