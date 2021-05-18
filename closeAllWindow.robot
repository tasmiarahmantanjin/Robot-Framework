*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://demowebshop.tricentis.com/register
${URL}      https://signin.intra.42.fr/users/sign_in

${BROWSER}        Chrome

*** Test Cases ***
My Test Case
	open browser	${LOGIN URL}	${BROWSER}
	Maximize browser Window

	open browser	${URL}	${BROWSER}
	Maximize browser Window

	Close All Browsers