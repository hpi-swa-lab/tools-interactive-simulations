initialization
initialize

	super initialize.
	
	self changeTableLayout.
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.