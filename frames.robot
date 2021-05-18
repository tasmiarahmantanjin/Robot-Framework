*** Settings ***
Documentation     How to Handle Frames
Library           SeleniumLibrary

*** Variables ***
${URL}      https://www.selenium.dev/selenium/docs/api/java/index
${BROWSER}        Chrome

*** Test Cases ***
Handling Alerts
	open browser	${URL}	${BROWSER}
	Maximize browser Window

	select frame	packageListFrame
	click link	org.openqa.selenium
	unselect frame

	sleep	2

	select frame	packageFrame
	click link	webDriver
	unselect frame

	sleep	2

	select frame	classFrame
	click link	Help
	unselect frame

	Close Browser
