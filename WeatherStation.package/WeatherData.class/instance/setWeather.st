measurements
setWeather
	| r |
	r := Random new.
	humidity := r next * 70 + 30.
	temperature := r next * 70 + 30.
	pressure := r next * 50 + 20.
	observers do: [ :each | each tempUpdate: temperature humidityUpdate: humidity pressureUpdate: pressure ].