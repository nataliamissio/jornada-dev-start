#include "Protheus.ch"

/*/{Protheus.doc} STTIP003
mBrowse da tabela ZA1 utilizando legendas coloridas.

Legenda:
- Vermelho: Pets com mais de 10 anos.
- Amarelo: Pets nascidos na data atual.
- Verde: Demais registros.

@type Function
@author Natalia
/*/

User Function STTIP003()

    // Variáveis locais utilizadas na rotina
    Local aColors := {}
    Local cFiltro := ""

    // Nome apresentado no cadastro
    Private cCadastro := "Pets"

    // Menu de ações do browse
    Private aRotina := {}

    // Criação das opções do menu
    aAdd(aRotina, {"Pesquisar", "AxPesqui", 0, 1})
    aAdd(aRotina, {"Visualizar", "AxVisual", 0, 2})
    aAdd(aRotina, {"Incluir", "AxInclui", 0, 3})
    aAdd(aRotina, {"Alterar", "AxAltera", 0, 4})
    aAdd(aRotina, {"Excluir", "AxDeleta", 0, 5})

    // Configuração das regras de cores do browse
    // Vermelho: pets com idade aproximada superior a 10 anos
    aAdd(aColors, {"ZA1->ZA1_DTNASC < dDataBase - 3650", "BR_RED"})

    // Amarelo: pets cadastrados com data de nascimento igual à data atual
    aAdd(aColors, {"ZA1->ZA1_DTNASC == dDataBase", "BR_YELLOW"})

    // Verde: demais registros
    aAdd(aColors, {".T.", "BR_GREEN"})

    // Seleciona a tabela ZA1
    dbSelectArea("ZA1")

    // Define o índice utilizado
    dbSetOrder(1)

    // Posiciona na filial atual
    dbSeek(xFilial("ZA1"))

    // Abre o browse com as legendas configuradas
    mBrowse(1, 1, 22, 75, "ZA1", , , , , , aColors, , , , , .F., , , cFiltro)

Return Nil