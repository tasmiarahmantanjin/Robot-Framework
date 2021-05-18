*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://demowebshop.tricentis.com/register
${BROWSER}        Chrome

*** Test Cases ***
Testing Dropdown and Lists
	${speed}=	get selenium timeout
	log to console	${speed}

	open browser	${LOGIN URL}	${BROWSER}
	Maximize browser Window

	set selenium timeout	10 seconds	# if i want to wait more than default 5 sec
	Wait Until Page Contains	Register	# default 5 sec wait

	# SELECT SOMETHING FROM Radio Button
	Select Radio Button	Gender	F

	# Input Text
	Input Text	name:FirstName	David
	Input Text	name:LastName	John
	Input Text	name:Email	david@gmail.com
	Input Text	name:Password	davidjohn
	Input Text	name:ConfirmPassword	davidjohn

	${speed}=	get selenium timeout
	log to console	${speed}

	[Teardown]	Close Browser