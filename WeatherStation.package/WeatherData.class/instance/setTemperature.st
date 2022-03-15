measurements
setTemperature
	| r |
	r := Random new.
	temperature := r next * 70 + 40.
	alertBox tempAlert: temperature.