#include "protheus.ch"

/*/{Protheus.doc} STTIP003
    Cadastro de Contatos (SZ1) com botao para Interacoes.
    @type Function
/*/
USER FUNCTION STTIP003()
    LOCAL aColors := {}
    LOCAL cFiltro := ""

    PRIVATE cCadastro := "Contatos"
    PRIVATE aRotina := {}

    dbSelectArea("SZ1")
    dbSetOrder(1)
    dbSeek(xFilial("SZ1"))

    AAdd(aRotina, {"Pesquisar", "AxPesqui", 0, 1})
    AAdd(aRotina, {"Visualizar", "AxVisual", 0, 2})
    AAdd(aRotina, {"Incluir", "AxInclui", 0, 3})
    AAdd(aRotina, {"Alterar", "AxAltera", 0, 4})
    AAdd(aRotina, {"Excluir", "AxDeleta", 0, 5})
    AAdd(aRotina, {"Interacoes", "U_STTIP004", 0, 6})

    // Legendas por idade do contato (recente, antigo e muito antigo).
    AAdd(aColors, {"SZ1->Z1_DATA >= dDataBase - 7", "BR_VERDE"})
    AAdd(aColors, {"SZ1->Z1_DATA >= dDataBase - 30", "BR_AMARELO"})
    AAdd(aColors, {".T.", "BR_VERMELHO"})

    mBrowse(1, 1, 22, 75, "SZ1", , , , , , aColors, , , , , .F., , , cFiltro)

RETURN NIL
