initialization
initialize

	super initialize.
	
	self color: Color transparent.
	self changeTableLayout.
	self changeListDirection: #topToBottom.
	self hResizing: #spaceFill.
	self vResizing: #shrinkWrap.
	self height: 0