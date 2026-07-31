#include "Protheus.ch"

/*/{Protheus.doc} VALCLI001
Valida se o cliente e a loja informados existem na tabela SA1.

Configuração no SX3:
Campo: ZA1_CLIENT
X3_VALID: U_VALCLI001()

@type  Function
@author Natalia
/*/

User Function VALCLI001()

    // Monta a chave de busca utilizando:
    // Filial + Código do Cliente + Loja
    Local cChave := xFilial("SA1") + M->ZA1_CLIENT + M->ZA1_LOJA

    // Verifica se o cliente informado existe na tabela SA1
    If ! ExistCpo("SA1", cChave, 1)

        // Exibe mensagem caso o cliente não seja encontrado
        MsgAlert("Cliente nao cadastrado na SA1!", "Atencao")

        // Retorna falso e impede a gravação do registro
        Return .F.

    EndIf

Return .T.