*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://www.practiceselenium.com/practice-form.html
${BROWSER}        Chrome

*** Test Cases ***
Testing Dropdown and Lists
	open browser	${LOGIN URL}	${BROWSER}
	Maximize browser Window

	# SELECT SOMETHING FROM DROPDOWN
	Select From List By Label	continents	Asia
	Select From List By Index	continents	5

	# SELECT FROM LIST BOX
	Select From List By Label	selenium_commands	Switch Commands
	Select From List By Label	selenium_commands	WebElement Commands

	Unselect From List By Label	selenium_commands	Switch Commands

	[Teardown]	Close Browser
