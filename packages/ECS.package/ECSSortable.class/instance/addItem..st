as yet unclassified
addItem: aMorph

	self addMorphBack: (ECSSortableItemWrapper new 
		addMorph: aMorph; 
		list: self;
		yourself).