*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${BROWSER}    https://automationexercise.com
${EMAIL}    bas00@gmail.com
${PASSWORD}    Bas0101010
${USERNAME}    Bas000
${Implicit Wait}    5

*** Test Cases ***
SignUpAndDeleteAccount
    Open Browser   ${Browser}
    Click Element    xpath=//button[contains(text(), 'Signup / Login')]
    Page Should Contain    New User Signup!
    Input Text    id=name    Bas000
    Input Text    id=email    bas00@gmail.com
    Click Element    xpath=//button[contains(text(), 'Signup')]
    Page Should Contain    ENTER ACCOUNT INFORMATION
    Input Text    id=title    Mr.
    Input Text    id=name    bas bbb
    Input Text    id=email    bas00@gmail.com
    Input Text    id=password    Bas0101010
    Input Text    id=dateOfBirth    10/10/2003
    Click Element    id=newsletter
    Click Element    id=specialOffers
    Input Text    id=firstName    bas
    Input Text    id=lastName    bbb
    Input Text    id=company    Boom Company
    Input Text    id=address    10 phayao SE
    Input Text    id=address2    UP SE
    Select From List by Value    id=country    US
    Select From List by Value    id=state    single
    Input Text    id=city    phayao
    Input Text    id=zipCode    56000
    Input Text    id=mobilePhone    0900000001
    Click Element    xpath=//button[contains(text(), 'Create Account')]
    Page Should Contain    ACCOUNT CREATED!
    Click Element    xpath=//button[contains(text(), 'Continue')]
    Page Should Contain    Logged in as bas bbb
    Click Element    xpath=//button[contains(text(), 'Delete Account')]
    Page Should Contain    ACCOUNT DELETED!
    Click Element    xpath=//button[contains(text(), 'Continue')]
    [Teardown]    Close Browser