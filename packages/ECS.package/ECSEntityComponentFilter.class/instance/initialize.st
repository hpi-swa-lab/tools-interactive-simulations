initialization
initialize

	super initialize.
	
	self universe when: #tick send: #updateList to: self.
	
	list := ECSColumn new.
	
	self privateQueryString: 'self query: {Label}'.
	
	self queryEditor: (ECSCodeEditor new 
		content: self queryString;
		doItIsAccept: true;
		acceptAction: [:text |
			self queryString: text asString.
			self updateList];
		yourself).
	
	self addMorphBack: self queryEditor.
	self addMorphBack: (ECSScrollPane new setMorph: list).
	self addMorphBack: (ECSToolResizer new target: self).
	self height: 200 * (TextStyle defaultFont height / 10) rounded.
	self vResizing: #rigid