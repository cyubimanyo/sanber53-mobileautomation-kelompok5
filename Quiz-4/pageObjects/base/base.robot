*** Settings ***
Library                AppiumLibrary


*** Variables ***
${REMOTE_URL}          http://localhost:4723/wd/hub

*** Keywords ***
Open Flight Application
    Open Application   remote_url=${REMOTE_URL}   
    ...                platformName=Android    
    ...                platformVersion=9.0    
    ...                deviceName=emulator-5554    
    ...                appPackage=com.example.myapplication    
    ...                appActivity=com.example.myapplication.MainActivity


Close Flight Application
    Close Application

