alerts
tempAlert: temp
	temperature := temp.
	temp > 90
		ifTrue: [Transcript show: 'we hot'. Transcript cr]