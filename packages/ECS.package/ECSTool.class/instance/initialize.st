initialization
initialize

	super initialize.
	
	self color: Color white.
	self changeTableLayout.
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.
	self addMorphBack: (header := ECSToolHeader new tool: self).
	
	detached := false