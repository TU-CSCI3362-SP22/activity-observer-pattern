update
updateTemp: temp humidity: hum pressure: pres
	| newPage |
	newPage := 'Temperature: ', temp asString.
	temp > 90
		ifTrue: [ newPage := newPage, String cr,'Lord it is hot outside' ].
	newPage := newPage, String cr, 'Humidity: ', hum asString.
	hum > 70
		ifTrue: [ newPage := newPage, String cr, 'Uncomfortably moist outside' ].
	newPage := newPage, String cr, 'Pressure: ', pres asString.
	pres < 20
		ifTrue: [ newPage := newPage, String cr, 'No pressure' ].
	textMorph contents: newPage.