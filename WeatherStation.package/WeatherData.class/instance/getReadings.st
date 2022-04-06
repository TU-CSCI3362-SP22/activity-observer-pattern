initialization
getReadings
	| r |
	r := Random new.
	temperature := (r next * 70 + 40) floor.
	pressure := (r next * 40 + 10) floor.
	humidity := (r next * 50 + 45) floor.
	alertBox tempAlert: temperature;
				pressureAlert: pressure.
	ticker update: self.