initialization
initialize

	| spacing |
	super initialize.
	
	spacing := (TextStyle defaultFont height / 3) rounded.
	grabIcon := ECSIcon iconHand_grab_o.
	
	self color: Color gray.
	self addMorph: (title := ECSLabel new hResizing: #spaceFill).
	self changeListDirection: #leftToRight.
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.
	self changeTableLayout.
	self cellGap: spacing.
	self layoutInset: spacing.
	self addMorph: (deleteButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #deleteTool to: self;
		balloonText: 'Close this tool')