as yet unclassified
initialize

	super initialize.
	
	3 timesRepeat: [self addMorphBack: (ECSCollapsible new header: (StringMorph new contents: 'Hello world'); body: ECSCodeEditor new)].