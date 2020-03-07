initialization
initialize

	super initialize.
	
	self universe when: #postTick send: #updateList to: self.
	
	list := ECSColumn new layoutInset: (0 @ 0 corner: ECSScrollPane scrollBarThickness @ 0).
	
	self privateQueryString: 'self query: #(Label)'.
	
	self queryEditor: (ECSCodeEditor new 
		content: self queryString;
		doItIsAccept: true;
		onChange: [:text |
			self queryString: text asString.
			self updateList];
		acceptOnCR: true;
		yourself).
	
	self addMorphBack: self queryEditor.
	self addMorphBack: (ECSScrollPane new setMorph: list).
	self addMorphBack: (ECSToolResizer new target: self).
	self height: 200 * (TextStyle defaultFont height / 10) rounded.
	self vResizing: #rigid