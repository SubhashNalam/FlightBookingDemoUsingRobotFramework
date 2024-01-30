*** Settings ***
Library    SeleniumLibrary
Resource    ../Entities/url.robot
Resource    ../Entities/locators.robot
Resource    ../Entities/testdata.robot

*** Keywords ***
user will able to initialize url in browser and chooses the destination
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Select From List By Value    ${departure_City_Xp}     ${departure_City}
    Select From List By Value    ${destination_City_Xp}   ${destination_City}
    Capture Page Screenshot
    Click Button    ${find_Flights_btn}
user will able to select the flight
    Click Button    ${choose_This_Flight_Btn}
    Capture Page Screenshot
user will able to enter his details
    Input Text    ${name_Xp}    ${name}
    Input Text    ${address_Xp}     ${address}
    Input Text    ${city_Xp}     ${city}
    Input Text    ${state_Xp}      ${state}
    Input Text    ${zipCode_Xp}     ${zipCode}
    Select From List By Value        ${card_Type_Xp}     ${cardType} 
    Input Text    ${card_Num_Xp}     ${cardNum} 
    Input Text    ${month_Xp}    ${month}  
    Input Text    ${year_Xp}    ${year} 
    Input Text    ${name_On_Card_Xp}     ${nameOnCard}
    Click Element    ${remember_Me_Checkbox}
    Capture Page Screenshot
    Click Button    ${purchase_Flight_Btn}
user will able to see the message Thank you for your purchase today!
    Page Should Contain    ${result}
    Sleep    5s



