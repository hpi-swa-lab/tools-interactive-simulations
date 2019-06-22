initialization
initialize

	super initialize.
	
	self vResizing: #rigid.
	self hResizing: #spaceFill.
	self extent: 0 @ (TextStyle defaultFont height / 4) rounded.
	self color: Color orange.
	
	grabbed := false