*** Settings ***
Library       Selenium2Library

Library       ../Libraries/MyLibrary.py

*** Test Cases ***
Search Indian Mart
    Open Browser          https://www.indiamart.com/          chrome
    wait until page contains         Sell On IndiaMART
    Search                     Mobiles
