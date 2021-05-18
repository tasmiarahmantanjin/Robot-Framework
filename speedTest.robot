*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://demowebshop.tricentis.com/register
${BROWSER}        Chrome

*** Test Cases ***
Testing Dropdown and Lists

	${speed}=	get selenium speed
	log to console	${speed}

	open browser	${LOGIN URL}	${BROWSER}
	Maximize browser Window
	set selenium speed	1 seconds

	# SELECT SOMETHING FROM Radio Button
	Select Radio Button	Gender	F

	# Input Text
	Input Text	name:FirstName	David
	Input Text	name:LastName	John
	Input Text	name:Email	david@gmail.com
	Input Text	name:Password	davidjohn
	Input Text	name:ConfirmPassword	davidjohn

	${speed}=	get selenium speed
	log to console	${speed}

	[Teardown]	Close Browser