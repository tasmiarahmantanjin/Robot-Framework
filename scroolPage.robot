*** Settings ***
Documentation	Simple example using SeleniumLibrary.
Library			SeleniumLibrary
Resource		./Resource/resource.robot

*** Variables ***
${URL}      https://www.awwwards.com/websites/scrolling/?ads=1&page=2
${BROWSER}        Chrome

*** Test Cases ***
Scroll Page
	open browser	${URL}	${BROWSER}
	Maximize browser Window

	#with the javascript
	# execute javascript	window.scrollTo(0,2500)

	# With Direct keywords
	# scroll element into view	xpath://*[@id="footer"]/div[1]/div/div[1]/ul/li[1]/a

	# Scroll untill bottom of the page
	execute javascript	window.scrollTo(0,document.body.scrollHeight)

	sleep	3
	# Scroll back to top of the page
	execute javascript	window.scrollTo(0,-document.body.scrollHeight)

	sleep	3
	close browser

