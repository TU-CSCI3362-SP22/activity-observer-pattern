initialization
getReadings
	| r |
	r := Random new.
	temperature := (r next * 70 + 40) floor.
	pressure := (r next * 40 + 10) floor.
	humidity := (r next * 50 + 45) floor.
	alertBox tempAlert: temperature;
				pressureAlert: pressure;
				humidityAlert: humidity.
	ticker update: self.
	webpage updateTemp: temperature humidity: humidity pressure: pressure.