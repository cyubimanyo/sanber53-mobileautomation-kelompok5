*** Settings ***
Resource        ../pageObjects/homePage/homePage.robot
Resource        ../pageObjects/loginPage/loginPage.robot
Test Setup       Open Flight Application

*** Variables ***
${VALID_USERNAME}      support@ngendigital.com
${VALID_PASSWORD}      abc123
${INVALID_USERNAME}    invalid
${INVALID_PASSWORD}    invalid

*** Test Cases ***
Login Valid Credential
    Click Sign In Button on Home Page
    Input Username on login Page    ${VALID_USERNAME}
    Input Password on Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page