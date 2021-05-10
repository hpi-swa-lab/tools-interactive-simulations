as yet unclassified
initialize

	super initialize.
	
	self
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		changeTableLayout;
		cellGap: 4;
		listDirection: #leftToRight;
		addMorphBack: (SBTextBubble new
			placeholderText: 'Field Name';
			hResizing: #spaceFill);
		addMorphBack: (SBComboBox new
			values: {#Object. #ECSVector2. #Number. #Boolean};
			object: #Number).
	
	