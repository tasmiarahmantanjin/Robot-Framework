*** Settings ***
Documentation	Simple example using SeleniumLibrary.
Library			SeleniumLibrary
Resource		./Resource/resource.robot

*** Variables ***
${LOGIN URL}      https://signin.intra.42.fr
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
	Open Browser To Login Page
	Input Username	trahman
	Input Password	OdvhutTanjin93tT@@
	Submit Credentials
	Welcome Page Should Be Open
	${pageTitle}=	Log the Title
	log to console	${pageTitle}
	[Teardown]	Close Browser
