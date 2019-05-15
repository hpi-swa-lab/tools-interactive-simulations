as yet unclassified
initialize

	| spacing |
	super initialize.
	
	spacing := TextStyle defaultFont height / 3.0.
	
	self color: Color gray.
	self addMorph: (StringMorph new hResizing: #spaceFill).
	self changeListDirection: #leftToRight.
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.
	self changeTableLayout.
	self cellInset: spacing.
	self layoutInset: spacing.
	self addMorph: (deleteButton := ECSButton new icon: ECSIcon iconRemove; when: #clicked send: #deleteTool to: self)