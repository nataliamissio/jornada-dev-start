#include "protheus.ch"

/*/{Protheus.doc} STTIP003SALVAR
    Gravacao segura de contatos (SZ1) com transacao e tratamento de erros.
    @type Function
/*/
USER FUNCTION STTIP003SALVAR()
    LOCAL lOk := .T.
    LOCAL cCodigo := ""
    LOCAL oErro

    BeginTran()

    BEGIN SEQUENCE

        IF Empty(AllTrim(M->Z1_CLIENTE))
            MsgAlert("Cliente e obrigatorio!", "Atencao")
            lOk := .F.
            Break()
        ENDIF

        IF Empty(AllTrim(M->Z1_ASSUNTO))
            MsgAlert("Assunto e obrigatorio!", "Atencao")
            lOk := .F.
            Break()
        ENDIF

        dbSelectArea("SZ1")
        dbSetOrder(1)

        IF Empty(AllTrim(M->Z1_CODIGO))
            cCodigo := ProxCodigoSZ1()
        ELSE
            cCodigo := AllTrim(M->Z1_CODIGO)
        ENDIF

        IF INCLUI
            IF !RecLock("SZ1", .T.)
                MsgStop("Nao foi possivel bloquear o novo registro para gravacao.", "Falha ao salvar")
                lOk := .F.
                Break()
            ENDIF
        ELSE
            IF !RecLock("SZ1", .F.)
                MsgStop("Nao foi possivel bloquear o registro para alteracao.", "Falha ao salvar")
                lOk := .F.
                Break()
            ENDIF
        ENDIF

        SZ1->Z1_FILIAL  := xFilial("SZ1")
        SZ1->Z1_CODIGO  := cCodigo
        SZ1->Z1_CLIENTE := AllTrim(M->Z1_CLIENTE)
        SZ1->Z1_LOJACLI := AllTrim(M->Z1_LOJACLI)
        SZ1->Z1_ASSUNTO := AllTrim(M->Z1_ASSUNTO)
        SZ1->Z1_DATA    := Date()
        SZ1->Z1_HORA    := Time()

        MsUnLock()
        ConfirmSX8()

    RECOVER WITH oErro

        lOk := .F.
        RollBackSX8()
        RollBackTran()
        U_GRAVARLOG("U_STTIP003SALVAR", oErro)
        MsgStop("Nao foi possivel salvar o contato. Verifique os dados e tente novamente.", "Falha ao salvar")

    END SEQUENCE

    IF lOk
        CommitTran()
    ENDIF

RETURN lOk
