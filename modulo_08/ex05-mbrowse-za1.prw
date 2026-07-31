#include "Protheus.ch"

/*/{Protheus.doc} STTIP002
Cadastro de Pets utilizando mBrowse.
@type  Function
@author Natalia
/*/

User Function STTIP002()

    // Define o nome apresentado no cadastro
    Private cCadastro := "Pets"

    // Define as opções disponíveis no menu do browse
    Private aRotina := {}

    // Adiciona as ações padrões do cadastro
    aAdd(aRotina, {"Pesquisar", "AxPesqui", 0, 1})
    aAdd(aRotina, {"Visualizar", "AxVisual", 0, 2})
    aAdd(aRotina, {"Incluir", "AxInclui", 0, 3})
    aAdd(aRotina, {"Alterar", "AxAltera", 0, 4})
    aAdd(aRotina, {"Excluir", "AxDeleta", 0, 5})

    // Seleciona a tabela de Pets
    dbSelectArea("ZA1")

    // Define o índice utilizado no browse
    // Índice 1: ZA1_FILIAL + ZA1_COD
    dbSetOrder(1)

    // Posiciona na filial atual
    dbSeek(xFilial("ZA1"))

    // Abre o browse da tabela ZA1
    mBrowse(1, 1, 22, 75, "ZA1")

Return Nil