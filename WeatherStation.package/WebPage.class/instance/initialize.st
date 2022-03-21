initialization
initialize
	super initialize.
	textMorph := TextMorph new contents: '';
		color: Color black;
		yourself.
	Morph new color: Color white;
		addMorph: textMorph;
		openInWorld.