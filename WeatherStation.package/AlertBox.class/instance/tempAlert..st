alerts
tempAlert: temp
	temperature := temp.
	temp > 90
		ifTrue: [Transcript print: 'we hot'. Transcript cr]