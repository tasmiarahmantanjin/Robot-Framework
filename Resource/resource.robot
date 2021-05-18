*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Intra Signin New

Input Username
    [Arguments]    ${username}
    Input Text    user_login    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    user_password    ${password}

Submit Credentials
    Click Button    Sign in

Log the Title
	${title}=	get title
	[Return]	${title}

Welcome Page Should Be Open
    Title Should Be    Intra Profile Home