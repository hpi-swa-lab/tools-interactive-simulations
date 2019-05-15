as yet unclassified
initialize

	super initialize.
	
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.
	self wrapFlag: false