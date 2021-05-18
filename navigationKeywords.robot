*** Settings ***
Documentation     Handle get location, go to & go back keywords and Handle multiple url
Library           SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com/

${BROWSER}        Chrome

*** Test Cases ***
Navigation Test
	open browser	${URL}	${BROWSER}
	Maximize browser Window
	${LOC1}=	get location
	log to console	${LOC1}

	go to	https://www.bing.com/
	${LOC2}=	get location
	log to console	${LOC2}

	go back
	${LOC3}=	get location
	log to console	${LOC3}

	Close All Browsers