initialization
initialize

	super initialize.
	
	self universe when: #tick send: #updateList to: self.
	
	list := ECSColumn new.
	
	self queryString: 'self query: {Label}'.
	self addMorphBack: (ECSCodeEditor new 
		changeText: self queryString;
		doItIsAccept: true;
		acceptAction: [:text |
			self queryString: text asString.
			self updateList];
		yourself).
	self addMorphBack: (ECSScrollPane new setMorph: list).
	self addMorphBack: (ECSToolResizer new target: self).
	self height: 200 * (TextStyle defaultFont height / 10) rounded.
	self vResizing: #rigid