*** Settings ***
Library       Selenium2Library

Library       ../Libraries/MyLibrary.py


*** Test Cases ***
Open an Check The Login
     Open Browser               http://www.gmail.com            chrome
     wait until page contains    Sign in
     Login                       krishna.sagar521@gmail.com
     capture page screenshot     1.png