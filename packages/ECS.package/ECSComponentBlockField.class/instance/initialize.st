as yet unclassified
initialize

	super initialize.
	
	fieldName := SBTextBubble new
		placeholderText: 'Field Name';
		width: 100;
		hResizing: #rigid.
	fieldValue := SBTextBubble new
		placeholderText: 'Field Value';
		width: 100;
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