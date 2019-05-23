colors
initialize

	super initialize.
	
	large := false.
	
	self vResizing: #shrinkWrap; hResizing: #shrinkWrap.
	self extent: 0 @ 0