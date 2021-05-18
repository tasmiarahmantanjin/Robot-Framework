*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://demowebshop.tricentis.com/register
${BROWSER}        Chrome

*** Test Cases ***
Testing Dropdown and Lists
	${speed}=	get selenium implicit wait
	log to console	${speed}

	open browser	${LOGIN URL}	${BROWSER}
	Maximize browser Window

	set selenium implicit wait	10 seconds	# if i want to wait more than default 0 sec

	${speed}=	get selenium timeout
	log to console	${speed}

	# SELECT SOMETHING FROM Radio Button
	Select Radio Button	Gender	F

	# Input Text
	Input Text	name:FirstName	David
	Input Text	name:LastName	John
	Input Text	name:Email	david@gmail.com
	Input Text	name:Password	davidjohn
	Input Text	name:ConfirmPassword	davidjohn

	[Teardown]	Close Browser