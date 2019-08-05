initialization
initialize

	super initialize.
	
	self addMorphBack: (checked := ECSIcon iconCheck).
	self when: #clicked send: #toggle to: self.
	self extent: checked extent + self layoutInset