initialization
initialize
	super initialize.
	textMorph := TextMorph new contents: '';
		color: Color black;
		yourself.
	Morph new color: Color white;
		extent: 600@100;
		addMorph: textMorph;
		openInWorld.
