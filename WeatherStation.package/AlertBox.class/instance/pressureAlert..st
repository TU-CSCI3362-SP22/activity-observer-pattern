alerts
pressureAlert: pres
	pressure := pres.
	pressure < 20
		ifTrue: [Transcript print: 'low pressure'. Transcript cr]