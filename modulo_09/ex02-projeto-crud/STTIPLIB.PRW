#include "protheus.ch"
#include "fileio.ch"

/*/{Protheus.doc} STTIPLIB
    Biblioteca de funcoes comuns do modulo 09.
    @type Function
/*/
USER FUNCTION STTIPLIB()
RETURN NIL

FUNCTION NomeCliente(cCodigo, cLoja)
    LOCAL cFilial := xFilial("SA1")
    LOCAL cNome := ""

    IF Empty(cCodigo)
        RETURN ""
    ENDIF

    cNome := POSICIONE("SA1", 1, cFilial + cCodigo + cLoja, "A1_NOME")

RETURN AllTrim(cNome)

FUNCTION ProxCodigoSZ1()
RETURN GetSXENum("SZ1", "Z1_CODIGO")

FUNCTION ProxSequenSZ2(cContat)
    LOCAL nMax := 0

    IF Empty(cContat)
        RETURN "001"
    ENDIF

    dbSelectArea("SZ2")
    dbSetOrder(1)

    IF dbSeek(xFilial("SZ2") + cContat)
        WHILE !Eof() .AND. SZ2->Z2_FILIAL == xFilial("SZ2") .AND. SZ2->Z2_CONTAT == cContat
            nMax := Max(nMax, Val(SZ2->Z2_SEQUEN))
            dbSkip()
        ENDDO
    ENDIF

RETURN StrZero(nMax + 1, 3)

FUNCTION DescTipoInteracao(cTipo)
    LOCAL cDesc := ""

    DO CASE
    CASE cTipo == "E"
        cDesc := "E-mail"
    CASE cTipo == "L"
        cDesc := "Ligacao"
    CASE cTipo == "R"
        cDesc := "Reuniao"
    CASE cTipo == "V"
        cDesc := "Visita"
    CASE cTipo == "W"
        cDesc := "WhatsApp"
    OTHERWISE
        cDesc := "Tipo nao mapeado"
    ENDCASE

RETURN cDesc

FUNCTION U_GRAVARLOG(cFuncao, oErro)
    LOCAL cArquivo := "\\logs\\advpl_" + DToS(Date()) + ".log"
    LOCAL cLinha := ""
    LOCAL nHandle := -1
    LOCAL cDesc := "Erro nao identificado"
    LOCAL cProc := ""
    LOCAL cLinhaProc := ""
    LOCAL cSubSist := ""
    LOCAL cOper := ""

    DEFAULT cFuncao := "(sem funcao)"

    IF ValType(oErro) == "O"
        cDesc := AllTrim(oErro:Description)
        cProc := AllTrim(cValToChar(oErro:ProcName))
        cLinhaProc := cValToChar(oErro:ProcLine)
        cSubSist := AllTrim(cValToChar(oErro:SubSystem))
        cOper := AllTrim(cValToChar(oErro:Operation))
    ELSEIF ValType(oErro) == "C"
        cDesc := AllTrim(oErro)
    ENDIF

    cLinha := DToS(Date()) + " " + Time() + " | "
    cLinha += cFuncao + " | "
    cLinha += cNomUsr + " | "
    cLinha += "Empresa: " + cEmpAnt + " Filial: " + cFilAnt + " | "
    cLinha += "ERRO: " + cDesc

    IF !Empty(cProc)
        cLinha += " | Func: " + cProc + ":" + cLinhaProc
    ENDIF

    IF !Empty(cSubSist)
        cLinha += " | SubSist: " + cSubSist
    ENDIF

    IF !Empty(cOper)
        cLinha += " | Oper: " + cOper
    ENDIF

    cLinha += CRLF

    nHandle := FOpen(cArquivo, FO_READWRITE + FO_SHARED)
    IF nHandle < 0
        nHandle := FCreate(cArquivo)
    ENDIF

    IF nHandle >= 0
        FSeek(nHandle, 0, FS_END)
        FWrite(nHandle, cLinha)
        FClose(nHandle)
    ENDIF

RETURN NIL
