as yet unclassified
initialize

	super initialize.
	
	self
		hResizing: #rigid;
		vResizing: #rigid;
		layoutPolicy: self;
		addMorph: (editor := ECSCodeMethodEditor new
			replaceOnSelectorChange: true;
			fullExpand: true;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap);
		
		addMorph: (translateButton := ECSTranslateButton new target: self)