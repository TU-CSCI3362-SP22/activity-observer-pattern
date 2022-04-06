alerts
humidityAlert: aValue
	humidity := aValue.
	humidity > 75
		ifTrue: [Transcript show: 'humidity high'. Transcript cr]