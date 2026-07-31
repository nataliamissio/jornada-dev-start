#include "Protheus.ch"

/*/{Protheus.doc} STTIP001
    Cadastro de Pets utilizando AxCadastro na tabela ZA1.
    @type Function
    @author Natalia
/*/

USER FUNCTION STTIP001()

    // Define o nome que será apresentado na tela do cadastro
    PRIVATE cCadastro := "Pets"

    // Seleciona a tabela ZA1 (Cadastro de Pets) para utilização na rotina
    dbSelectArea("ZA1")

    // Define o índice padrão utilizado pela tabela ZA1
    // Índice 1: ZA1_FILIAL + ZA1_COD
    dbSetOrder(1)

    // Posiciona o registro na filial atual do ambiente Protheus
    // Utiliza o campo ZA1_FILIAL como parte da chave do índice
    dbSeek(xFilial("ZA1"))

    // Abre o cadastro automático utilizando a função padrão AxCadastro
    // Permite incluir, alterar, excluir e consultar registros da tabela ZA1
    AxCadastro("ZA1", "Pets", , "1", , , , .F.)

RETURN NIL