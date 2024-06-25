*** Settings ***

Resource        ../resources/base.resource

*** Test Cases ***
Deve validar o clique simples

    Start
    Iniciar app
    Validar opção Dialogs            Dialogs
    Navegate to                      Clique em Botões
    Validar opção                    Clique simples    Botão clique simples

#Validação do teste sem encapsulamento
    Click Text                       CLIQUE SIMPLES
    Wait Until Page Contains         Isso é um clique simples


    Encerrar aplicação


Deve validar o clique longo

    Navegate to                      Clique em Botões
    Validar opção_1                  Clique longo    Botão clique longo

#Validação do teste sem encapsulamento
    Click Text                       CLIQUE LONGO
    Wait Until Page Contains         Isso é um clique longo


    Encerrar aplicação


