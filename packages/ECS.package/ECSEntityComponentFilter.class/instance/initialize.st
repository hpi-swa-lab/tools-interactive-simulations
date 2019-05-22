initialization
initialize

	super initialize.
	
	self universe when: #tick send: #updateList to: self.
	
	list := ECSColumn new.
	
	self queryString: 'self query: {Label}'.
	self addMorphBack: (ECSCodeEditor new 
		changeText: self queryString;
		acceptAction: [:text |
			self queryString: text asString.
			self updateList];
		yourself).
	self addMorphBack: (ECSScrollPane new setMorph: list).
	self addMorphBack: (ECSToolResizer new target: self).
	self height: 300.
	self vResizing: #rigid