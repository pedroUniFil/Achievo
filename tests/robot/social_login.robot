*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE}         http://localhost:8000/login
${REGISTER_PAGE}      http://localhost:8000/register
${BROWSER}            chrome
${DASHBOARD_URL}      http://localhost:8000/dashboard

*** Test Cases ***
Login Com Google
    Open Browser    http://localhost:8000/    ${BROWSER}
    Wait Until Page Contains Element    xpath=//a[contains(@href,'/login')]
    Click Element    xpath=//a[contains(@href,'/login')]
    Wait Until Element Is Visible    xpath=//button[contains(.,'Google')]
    Click Button    xpath=//button[contains(.,'Google')]
    Sleep           2s
    Location Should Contain    dashboard
    Close Browser

Registre-se Com Google
    Open Browser    http://localhost:8000/    ${BROWSER}
    Wait Until Page Contains Element    xpath=//a[contains(@href,'/register')]
    Click Element    xpath=//a[contains(@href,'/register')]
    Wait Until Element Is Visible    xpath=//button[contains(.,'Google')]
    Click Button    xpath=//button[contains(.,'Google')]
    Sleep           2s
    Location Should Contain    dashboard
    Close Browser

Login Com Apple
    Open Browser    http://localhost:8000/    ${BROWSER}
    Wait Until Page Contains Element    xpath=//a[contains(@href,'/login')]
    Click Element    xpath=//a[contains(@href,'/login')]
    Wait Until Element Is Visible    xpath=//button[contains(.,'Apple')]
    Click Button    xpath=//button[contains(.,'Apple')]
    Sleep           2s
    Location Should Contain    dashboard
    Close Browser

Registre-se Com Apple
    Open Browser    http://localhost:8000/    ${BROWSER}
    Wait Until Page Contains Element    xpath=//a[contains(@href,'/register')]
    Click Element    xpath=//a[contains(@href,'/register')]
    Wait Until Element Is Visible    xpath=//button[contains(.,'Apple')]
    Click Button    xpath=//button[contains(.,'Apple')]
    Sleep           2s
    Location Should Contain    dashboard
    Close Browser

*** Keywords ***
Wait For Dashboard
    Wait Until Location Contains    dashboard
    Wait Until Page Contains Element    xpath=//span[contains(text(),'Total de Tarefas')]
