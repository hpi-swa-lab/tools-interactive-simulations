as yet unclassified
initialize

	builder := ECSListBuilder new.
	
	super initialize.
	
	self vResizing: #spaceFill.
	self hResizing: #spaceFill.
	
	self scroller  addMorph: builder