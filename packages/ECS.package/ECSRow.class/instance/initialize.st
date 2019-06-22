initialization
initialize

	super initialize.
	
	self color: Color transparent.
	self changeTableLayout.
	self changeListDirection: #leftToRight.
	self hResizing: #spaceFill.
	self vResizing: #shrinkWrap