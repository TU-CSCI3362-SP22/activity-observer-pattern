as yet unclassified
sampleWeatherData
	| wd |
	wd := self new.
	wd setTemperature.
	wd ticker update: wd.
	wd updateWebPage.
	^ wd
