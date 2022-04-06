cleanup
cleanMorphs
	| morphs |
	morphs := World submorphs.
	morphs select: [ :m | 
	    m submorphs anySatisfy: [ :sm | sm class = TextMorph ]]
		thenDo: [ :m | m delete ].
	morphs select: [ :m | m model = Transcript ] thenDo: [ :m | m delete].