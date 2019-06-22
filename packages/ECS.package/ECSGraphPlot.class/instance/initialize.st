initialization
initialize

	super initialize.
	
	data := ECSCyclicList new.
	
	self
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: TextStyle defaultFont height * 2