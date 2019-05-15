as yet unclassified
initialize

	super initialize.
	
	self universe systems do: [:each | self addMorphBack: (ECSCollapsible new 
		header: (StringMorph new contents: each name); 
		body: (ECSCodeEditor new changeText: (each class lookupSelector: #tick:) getSourceFromFile);
		collapse)]