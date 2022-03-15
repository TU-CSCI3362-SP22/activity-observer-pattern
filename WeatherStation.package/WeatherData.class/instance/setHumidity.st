measurements
setHumidity
	| r |
	r := Random new.
	humidity := r next * 70 + 30.
	alertBox humidityAlert: humidity.