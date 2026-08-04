#include "protheus.ch"

/*/{Protheus.doc} STTIP004
    Lista Interacoes (SZ2) filtradas pelo contato atual da SZ1.
    @type Function
/*/
USER FUNCTION STTIP004()
    LOCAL cContato := ""
    LOCAL cFiltro := ""

    IF Select("SZ1") == 0
        MsgStop("Abra a rotina de Contatos primeiro.", "Interacoes")
        RETURN NIL
    ENDIF

    cContato := SZ1->Z1_CODIGO
    IF Empty(cContato)
        MsgStop("Selecione um contato valido.", "Interacoes")
        RETURN NIL
    ENDIF

    PRIVATE cCadastro := "Interacoes - Contato " + AllTrim(cContato)
    PRIVATE aRotina := {;
        {"Pesquisar", "AxPesqui", 0, 1},;
        {"Visualizar", "AxVisual", 0, 2},;
        {"Incluir", "AxInclui", 0, 3},;
        {"Alterar", "AxAltera", 0, 4},;
        {"Excluir", "AxDeleta", 0, 5};
    }

    cFiltro := "Z2_CONTAT == '" + cContato + "'"

    dbSelectArea("SZ2")
    dbSetOrder(1)
    dbSeek(xFilial("SZ2") + cContato)

    mBrowse(1, 1, 22, 75, "SZ2", , , , , , , , , , , .F., , , cFiltro)

RETURN NIL

/*/{Protheus.doc} STTIP004B
    Lista geral de Interacoes (SZ2), sem filtro por contato.
    @type Function
/*/
USER FUNCTION STTIP004B()
    dbSelectArea("SZ2")
    dbSetOrder(1)
    dbSeek(xFilial("SZ2"))

    mBrowse(6, 1, 22, 75, "SZ2", 1)

RETURN NIL
