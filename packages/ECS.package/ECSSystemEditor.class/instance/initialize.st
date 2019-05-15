as yet unclassified
initialize

	super initialize.
	
	self universe systems do: [:each | self addMorphBack: (ECSCollapsible new 
		header: (ECSLabel new contents: each name); 
		body: (ECSCodeEditor new 
			styleFullMethod: true;
			changeText: (each class lookupSelector: #tick:) getSourceFromFile;
			acceptAction: [:text | each class compile: text asString];
			yourself);
			collapse)]