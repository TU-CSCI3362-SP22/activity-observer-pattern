update
updateTemperature: temp updateHumidity: hum updatePressure: pres
	temp > 90
		ifTrue: [ textMorph contents: 'Lord it is hot outside' ].
	hum > 70
		ifTrue: [ textMorph contents: 'Uncomfortably moist outside' ].
	pres < 20
		ifTrue: [ textMorph contents: 'No pressure' ].