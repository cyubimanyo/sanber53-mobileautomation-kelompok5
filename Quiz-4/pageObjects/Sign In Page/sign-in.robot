*** Settings ***
Resource                                ../base/base.robot
Variables                                sign-in-locator.yaml


*** Keywords ***
Input Valid Username
    Wait Until Element Is Visible       locator=${username_input}
    Input Text                          locator=${username_input}      text=support@ngendigital.com 
Input Invalid Username
    Wait Until Element Is Visible       locator=${username_input}
    Input Text                          locator=${username_input}      text=TestUser    
Input Incorrect Username
    Wait Until Element Is Visible       locator=${username_input}
    Input Text                          locator=${username_input}      text=aaa     
Input Correct Username
    Wait Until Element Is Visible       locator=${username_input}
    Input Text                          locator=${username_input}      text=support@ngendigital.com 

Input Valid Password User
     Input Text                         locator=${password_input}      text=abc123
Input Invalid Password User
     Input Text                         locator=${password_input}      text=TestPassword
Input Correct Password User
     Input Text                         locator=${password_input}      text=abc123
Input Incorrect Password User
     Input Text                         locator=${password_input}      text=aaa

Click Sign In Button On Login Page
    Wait Until Element Is Visible    locator=${signin_btn}     
    Click Element                       locator=${signin_btn}

Verify User Is Successfully Logged In
    Wait Until Element Is Visible       locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
    Wait Until Page Contains            text=NGen Digital
    
Verify User Is Fail To Logged In
    Wait Until Page Contains            text=Invalid username/password

Verify User Is Fail To Logged In because Empty Creds
    Wait Until Page Contains            text=Invalid username/password

Verify User Is Fail To Logged In because Incorrect Username, Correct Password
    Wait Until Page Contains            text=Invalid username/password

Verify User Is Fail To Logged In because Correct Username, Incorrect Password
    Wait Until Page Contains            text=Invalid username/password