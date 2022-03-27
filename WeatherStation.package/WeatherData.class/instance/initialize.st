initialization
initialize 
	super initialize. 
	humidity := 0.
	temperature := 0.
	pressure := 0.
	observers := OrderedCollection new.
	observers add: (AlertBox new).
	observers add: (WebPage new).
	observers add: (Ticker new).
	Transcript open. 
	Transcript clear.