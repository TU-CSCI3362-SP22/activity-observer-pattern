alerts
pressureAlert: pres
	pressure := pres.
	pressure < 20
		ifTrue: [Transcript show: 'low pressure'. Transcript cr]