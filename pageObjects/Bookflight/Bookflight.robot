*** Settings ***
Resource       ../base/base.robot
Variables       book-locator.yaml

*** Keywords ***
Select From City
    Wait Until Element Is Visible    ${fromCitySpinner}
    Click Element    ${fromCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Toronto"]
    Click Text    Toronto
    Element Should Contain Text    //android.widget.TextView[@text="Toronto"]    Toronto  

Set To City
    Wait Until Element Is Visible    ${toCitySpinner}
    Click Element    ${toCitySpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="London"]
    Click Text    London
    Element Should Contain Text    //android.widget.TextView[@text="London"]    London  


Set Class
    Wait Until Element Is Visible    ${classSpinner}
    Click Element    ${classSpinner}
    Wait Until Element Is Visible    //android.widget.TextView[@text="First"]
    Click Text    First
    Element Should Contain Text    //android.widget.TextView[@text="First"]    First  

Set Start Date
    Click Element    ${startDateTextView}
    Wait Until Element Is Visible    ${datePicker}
    Click Element    ${StartDatePicker}
    Click Element    ${okButtonDatePicker}


Set End Date
    Click Element    ${endDateTextView}
    Wait Until Element Is Visible    ${datePicker}
    Click Element    ${EndDatePicker}
    Click Element    ${okButtonDatePicker}

Set Flight RadioButton
    Click Element    ${flightRadioButton}

Set OneDay CheckBox
    Click Element    ${oneDayCheckBox}

Click Book Confirm
    Click Element    ${bookFlightButton}

Select Price
    Wait Until Element Is Visible    ${priceButton}
    Click Element    ${priceButton}

Click Price Confirm
    Click Element    ${priceConfirmButton}

Book Successfully
    Wait Until Element Is Visible    ${yourFlightIsBooked}


