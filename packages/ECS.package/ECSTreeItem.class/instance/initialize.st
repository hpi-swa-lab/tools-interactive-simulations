initialization
initialize

	super initialize.
	
	hovered := false.
	selected := false.
	expanded := false.
	self hResizing: #spaceFill; vResizing: #shrinkWrap