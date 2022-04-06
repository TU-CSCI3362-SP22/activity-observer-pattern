as yet unclassified
sampleWeatherData
	| wd |
	wd := self new.
	wd setTemperature.
	wd setPressure.
	wd setHumidity.
	^ wd
