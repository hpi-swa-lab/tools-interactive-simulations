as yet unclassified
initialize

	super initialize.
	
	self vResizing: #rigid.
	self hResizing: #spaceFill.
	self extent: 0 @ (TextStyle defaultFont height / 4).
	self color: Color orange.
	
	grabbed := false