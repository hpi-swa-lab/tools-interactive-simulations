as yet unclassified
initialize

	super initialize.
	
	self vResizing: #spaceFill.
	self hResizing: #rigid.
	self extent: 0 @ 4.
	self color: Color orange