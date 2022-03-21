as yet unclassified
simpleWeatherData
	| wd |
	wd := self new.
	wd setTemperature.
	wd setPressure.
	wd setHumidity.
	^ wd