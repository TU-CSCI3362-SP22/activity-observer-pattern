initialization
initialize 
	super initialize. 
	humidity := 0.
	temperature := 0.
	pressure := 0.
	alertBox := AlertBox new.
	ticker := Ticker new.
	Transcript open.
	Transcript clear.