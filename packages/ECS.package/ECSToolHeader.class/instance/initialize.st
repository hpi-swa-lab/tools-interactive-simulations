as yet unclassified
initialize

	super initialize.
	
	self color: Color gray.
	self addMorph: (StringMorph new hResizing: #spaceFill).
	self changeListDirection: #leftToRight.
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.
	self changeTableLayout.
	self layoutInset: 12.
	self addMorph: (deleteButton := ECSButton new icon: ECSIcon iconRemove; when: #clicked send: #deleteTool to: self)