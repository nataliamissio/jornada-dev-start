#include "protheus.ch"

/*/{Protheus.doc} VALEXCSZ1
    Impede exclusao de contato com interacoes vinculadas.
    @type Function
/*/
USER FUNCTION VALEXCSZ1()
    LOCAL cChave := xFilial("SZ2") + SZ1->Z1_CODIGO

    IF ExistCpo("SZ2", cChave, 1)
        MsgAlert("Nao e permitido excluir este contato: existem interacoes vinculadas.", "Integridade referencial")
        RETURN .F.
    ENDIF

RETURN .T.

/*/{Protheus.doc} EXECUTARSEGURO
    Executa um bloco com tratamento padrao de erro e log.
    @type Function
/*/
USER FUNCTION EXECUTARSEGURO(bBloco, cMsgErro)
    LOCAL lOk := .T.

    DEFAULT cMsgErro := "Falha ao executar operacao."

    BEGIN SEQUENCE

        Eval(bBloco)

    RECOVER WITH oErro

        lOk := .F.
        MsgStop(cMsgErro, "Erro")
        U_GRAVARLOG("U_EXECUTARSEGURO", oErro)

    END SEQUENCE

RETURN lOk
