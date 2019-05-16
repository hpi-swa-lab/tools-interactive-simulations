as yet unclassified
initialize

	super initialize.
	
	"listMorph := ECSList new."
	list := ECSColumn new.
	
	self queryString: '{}'.
	self addMorphBack: (ECSCodeEditor new 
		changeText: self queryString;
		acceptAction: [:text | 
			self queryString: text asString.
			self updateList];
		yourself).
	self addMorphBack: (ECSScrollPane new setMorph: list).
	self addMorphBack: (ECSToolResizer new target: self).
	
	self updateList.
	
	"Register myself as a system. This is hacky, but what would be the correct way?"
	self universe register: self.