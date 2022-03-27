update
tempUpdate: temp humidityUpdate: hum pressureUpdate: pres 
	super tempUpdate: temp humidityUpdate: hum pressureUpdate: pres.
	temperature < 50
		ifTrue: [ textMorph contents: 'Wear a coat :)' ].
	temperature > 80
		ifTrue: [ textMorph contents: 'Wear something light B)' ].
	temperature > 100
		ifTrue: [ textMorph contents: 'Dont go outside :(' ].