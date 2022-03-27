display
tempUpdate: temp humidityUpdate: hum pressureUpdate: pres 
	super tempUpdate: temp humidityUpdate: hum pressureUpdate: pres.
	textMorph contents: 'Temperature: ', temp asString, ' || Humidity: ', hum asString, ' || Pressure: ', pres asString