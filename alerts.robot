*** Settings ***
Documentation     How to Handle Alerts & Frames
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://testautomationpractice.blogspot.com/
${BROWSER}        Chrome

*** Test Cases ***
Handling Alerts
	open browser	${LOGIN URL}	${BROWSER}
	Maximize browser Window

	click element	xpath://*[@id="HTML9"]/div[1]/button	# opens alert
	sleep	3
	# handle alert	dismiss
	# handle alert	leave
	alert should be present	Press a button!
	# handle alert	accept
	# alert should not be present	Press a button!


	Close All Browsers
