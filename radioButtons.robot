*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://www.practiceselenium.com/practice-form.html
${BROWSER}        Chrome

*** Test Cases ***
TestingRadioButton
	open browser    ${LOGIN URL}	${BROWSER}
	Maximize Browser Window
	# Set Selenium Speed	1seconds

	Select Radio Button	sex	Female
	Select Radio Button	exp	5
	
	# Selecting Check BOX
	Select Checkbox	BlackTea
	Select Checkbox	RedTea

	Unselect Checkbox	BlackTea
	[Teardown]	Close Browser