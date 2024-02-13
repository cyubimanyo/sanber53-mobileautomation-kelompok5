*** Settings ***
Resource    ../pageObjects/homePage/homePage.robot
Resource    ../pageObjects/loginPage/loginPage.robot
Resource    ../pageObjects/Bookflight/Bookflight.robot

*** Test Cases ***
Successfully Open Flight Application
    Open Flight Application
    Verify Homepage Appears
    Click Button Sign In Home Page
    Login User
    Click Button Sign In Login Page
    Login Successfully
    Click Button Book


Book Scenario
    Select From City
    Set To City
    Set Class
    Set Start Date
    Set End Date
    Set Flight RadioButton
    Set OneDay CheckBox
    Click Book Confirm
    Select Price
    Click Price Confirm
    Book Successfully