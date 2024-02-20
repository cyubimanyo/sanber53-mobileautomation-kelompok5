*** Settings ***
Resource                ../pageObjects/Home Page/home-page.robot
Resource                ../pageObjects/Sign In Page/sign-in.robot

*** Test Cases ***
Login with Valid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Valid Username                
    Input Valid Password User 
    Click Sign In Button On Login Page 
    Verify User Is Successfully Logged In
    Close Flight Application

Login with Invalid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Invalid Username
    Input Invalid Password User 
    Click Sign In Button On Login Page   
    Verify User Is Fail To Logged In
    Close Flight Application

Login with Empty Creds
    Open Flight Application
    Click Sign In Button On Home Page
    Click Sign In Button On Login Page  
    Verify User Is Fail To Logged In because Empty Creds
    Close Flight Application    

Login with Incorrect Username, Correct Password
    Open Flight Application
    Click Sign In Button On Home Page
    Input Incorrect Username
    Input Correct Password User 
    Click Sign In Button On Login Page   
    Verify User Is Fail To Logged In because Incorrect Username, Correct Password
    Close Flight Application   

Login with Correct Username, Incorrect Password
    Open Flight Application
    Click Sign In Button On Home Page
    Input Correct Username
    Input Incorrect Password User 
    Click Sign In Button On Login Page   
    Verify User Is Fail To Logged In because Correct Username, Incorrect Password
    Close Flight Application 