measurements
setPressure
	| r |
	r := Random new.
	pressure := r next * 70 + 40.
	alertBox pressureAlert: pressure.