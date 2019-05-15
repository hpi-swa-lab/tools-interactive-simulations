as yet unclassified
initialize

	super initialize.
	
	self universe systems do: [:each | self addMorphBack: (ECSCollapsible new 
		header: (ECSLabel new contents: each name); 
		body: (ECSCodeEditor new 
			changeText: (each class lookupSelector: #tick:) getSourceFromFile;
			acceptAction: [:text | each class compile: text asString]);
			collapse)]