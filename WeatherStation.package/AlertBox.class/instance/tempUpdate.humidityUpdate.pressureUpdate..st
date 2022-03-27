updating
tempUpdate: temp humidityUpdate: hum pressureUpdate: pres 
	super tempUpdate: temp humidityUpdate: hum pressureUpdate: pres.
	self humidityAlert: hum.
	self tempAlert: temp.
	self pressureAlert: pres. 