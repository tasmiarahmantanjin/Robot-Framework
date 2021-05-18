*** Settings ***
Documentation     Handle using multiple browser window
Library           SeleniumLibrary

*** Variables ***
${URL1}      https://www.google.com/
${URL2}      https://www.bing.com/

${BROWSER}        Chrome

*** Test Cases ***
My Test Case
	open browser	${URL1}	${BROWSER}
	Maximize browser Window

	switch browser	1
	${title1}=	get title
	log to console	${title1}

	open browser	${URL2}	${BROWSER}
	Maximize browser Window

	switch browser	2
	${title2}=	get title
	log to console	${title2}

	Close All Browsers