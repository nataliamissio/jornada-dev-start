# Exercicio 3 - Gatilhos, Campos Virtuais e Validacoes Cruzadas (bonus)

## Campos virtuais na SZ2 (X3_RELACAO)

- Z2_CODIGO

```advpl
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_CODIGO")
```

- Z2_ASSUNT

```advpl
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_ASSUNTO")
```

## Gatilhos da SZ2

- Z2_DATA

```advpl
dDataBase
```

- Z2_HORA

```advpl
IF(INCLUI, Time(), SZ2->Z2_HORA)
```

- Z2_USUAR

```advpl
cNomUsr
```

## Validacao cruzada no Z2_CONTAT (X3_VALID)

```advpl
ExistCpo("SZ1", xFilial("SZ1") + M->Z2_CONTAT, 1)
```

## Teste esperado

1. Ao incluir uma interacao, data/hora/usuario devem ser preenchidos automaticamente.
2. Ao informar contato inexistente, a validacao deve bloquear a gravacao.
