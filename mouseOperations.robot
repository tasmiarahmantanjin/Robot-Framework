*** Settings ***
Documentation     Taking Page & Element ScreenShot
Library           SeleniumLibrary

*** Variables ***
${URL}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${BROWSER}        Chrome

*** Test Cases ***
Mouse Operations Test Case
	# Right Click Action By Mouse
	open browser	${URL}	${BROWSER}
	Maximize browser Window
	open context menu	xpath://span[@class='context-menu-one btn btn-neutral']
	sleep	2

	# DOUBLE Click Action By Mouse
	go to	http://testautomationpractice.blogspot.com/
	Maximize browser Window
	double click element	xpath://button[contains(text(),'Copy Text')]
	sleep	2

	# Drag & Drop Actions
	go to	http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3-html
	Maximize browser Window
	drag and drop	id:box6	id:106
	sleep	2

	Close Browser