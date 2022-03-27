alerts
humidityAlert: hum
	humidity := hum.
	humidity > 70
		ifTrue: [Transcript print: 'Humidity high lol'.Transcript cr ]