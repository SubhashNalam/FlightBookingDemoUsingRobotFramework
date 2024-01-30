*** Settings ***
Library    SeleniumLibrary
Resource    ../InterfaceKeywords/bookingIK.robot

*** Test Cases ***
Booking Flight
    Given user will try to initialize url and choose destination
    When user will try to select the flight
    And user will try to enter his details
    Then user will try to see the message Thank you for your purchase today!