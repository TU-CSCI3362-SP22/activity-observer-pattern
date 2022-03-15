display
initialize
	super initialize.
	textMorph := TextMorph new contents: 'Temperature 0 || Humidity 0 || Pressure 0';
		color: Color black;
		yourself.
	Morph new color: Color white;
		addMorph: textMorph;
		openInWorld.