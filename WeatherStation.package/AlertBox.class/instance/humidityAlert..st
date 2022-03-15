alerts
humidityAlert: hum
	humidity := hum.
	humidity > 70
		ifTrue: [Transcript show: 'Humidity high lol'.Transcript cr ]