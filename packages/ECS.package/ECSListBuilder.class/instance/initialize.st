as yet unclassified
initialize

	super initialize.
	
	cache := Dictionary new.
	itemCount := 0.
	itemHeight := 0.
	
	self hResizing: #spaceFill.
	self vResizing: #rigid