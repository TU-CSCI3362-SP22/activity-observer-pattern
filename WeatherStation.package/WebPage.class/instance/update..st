update
update: wd
	wd temperature < 50
		ifTrue: [ textMorph contents: 'Wear a coat :)' ].
	wd temperature > 80
		ifTrue: [ textMorph contents: 'Wear something light B)' ].
	wd temperature > 100
		ifTrue: [ textMorph contents: 'Dont go outside :(' ].