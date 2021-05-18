*** Settings ***
Documentation     Taking Page & Element ScreenShot
Library           SeleniumLibrary

*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/
${BROWSER}        Chrome

*** Test Cases ***
My Test Case
	open browser	${URL}	${BROWSER}
	Maximize browser Window

	input text	id:txtUsername	admin
	input text	id:txtPassword	admin123

	capture element screenshot	xpath://*[@id="divLogo"]/img	logo.png
	capture page screenshot	logoTC.png

	Close Browser