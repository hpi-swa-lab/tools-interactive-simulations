colors
initialize

	super initialize.
	
	large := false.
	
	self color: Color black.
	self vResizing: #shrinkWrap; hResizing: #shrinkWrap.
	self extent: 0 @ 0