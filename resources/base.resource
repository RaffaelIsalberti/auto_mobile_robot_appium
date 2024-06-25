*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}                QAX
${MENU-YODAPP}          xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

*** Keywords ***

Start
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=AndroidEmulator
    ...                 automationName=uiautomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

Iniciar app
    Wait Until Page Contains         ${START}    5
    Click Text                       ${START}

Validar opção Dialogs 
    [Arguments]                      ${text-item}

    ${caixa-dialogo}         Set Variable    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/tvItemTitle" and @text="${text-item}"]
    ${info-caixa-dialogo}    Set Variable    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="com.qaxperience.yodapp:id/rvSubMenu"]/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout
    ${ok-caixa-dialogo}      Set Variable    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/dialogInfoOk"]

    Wait Until Element Is Visible    ${MENU-YODAPP}     5
    Click Element                    ${MENU-YODAPP} 
    Click Element                    ${caixa-dialogo} 
    Click Element                    ${info-caixa-dialogo}  

    Wait Until Page Contains         Mestre Yoda   5
    Click Element                    ${ok-caixa-dialogo}

Navegate to
    [Arguments]                      ${text-item}
    ${button-simple}         Set Variable    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/tvItemTitle" and @text="${text-item}"]

    Click Element                    ${MENU-YODAPP} 
    Click Element                    ${button-simple}
    
Validar opção   
    [Arguments]                      ${item}   ${checkpoint}

    Click Text                       ${item}
    Wait Until Page Contains         ${checkpoint}
    
Validar opção_1 
    [Arguments]                      ${item}   ${checkpoint}

    Click Text                       ${item}
    Wait Until Page Contains         ${checkpoint}
    

Encerrar aplicação
    Close Application