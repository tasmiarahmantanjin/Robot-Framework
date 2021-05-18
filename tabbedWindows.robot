*** Settings ***
Documentation     How to Handle Tabbed Windows
Library           SeleniumLibrary

*** Variables ***
${URL}      http://demo.automationtesting.in/Windows.html
${BROWSER}        Chrome

*** Test Cases ***
Handling Alerts
	open browser	${URL}	${BROWSER}
	Maximize browser Window

	click element	xpath://*[@id="Tabbed"]/a/button
	Switch Window	title=SeleniumHQ Browser Automation
	click element	xpath://*[@id="navbar"]/a[3]

	Close All Browsers
