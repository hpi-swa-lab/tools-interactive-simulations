as yet unclassified
initialize

	super initialize.
	
	self enableDrop: true.
	self hResizing: #spaceFill.
	self vResizing: #spaceFill.
	self color: Color red.
	self changeTableLayout