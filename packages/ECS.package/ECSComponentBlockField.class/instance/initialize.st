as yet unclassified
initialize

	super initialize.
	
	fieldName := SBTextBubble new
		placeholderText: 'Field Name';
		hResizing: #spaceFill.
	fieldValue := SBTextBubble new
		placeholderText: 'Field Value';
		hResizing: #spaceFill;
		hide;
		disableLayout: true.
	fieldType := SBComboBox new
		values: {#Object. #ECSVector2. #Number. #Boolean};
		object: #Number.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		cellGap: 4;
		listDirection: #leftToRight;
		addMorphBack: fieldName;
		addMorphBack: fieldValue;
		addMorphBack: fieldType