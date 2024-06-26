*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve validar o clique simples

    Start
    Iniciar app
    Validar opção Dialogs            Dialogs
    Navegate to                      Clique em Botões
    Validar opção                    Clique simples    Botão clique simples
    Validar opção_1                  CLIQUE SIMPLES    Isso é um clique simples

#Validação do teste sem encapsulamento
    # Click Text                       CLIQUE SIMPLES
    # Wait Until Page Contains         Isso é um clique simples

Deve validar o clique longo

    Navegate to                      Clique em Botões
    Validar opção_2                  Clique longo    Botão clique longo
    Validar opção_3                  Isso é um clique longo

    # Tap With Positions               1000    ${583, 1290}
    # Wait Until Page Contains         Isso é um clique longo

#Validação do teste sem encapsulamento
    # Click Text                       CLIQUE LONGO
    # Wait Until Page Contains         Isso é um clique longo


    Encerrar aplicação


