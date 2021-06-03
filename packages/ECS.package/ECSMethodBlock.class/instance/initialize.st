as yet unclassified
initialize

	super initialize.
	
	title := SBTextBubble new placeholderText: 'Method Name'.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: title;
			addMorphBack: (SBIcon iconRemove on: #click send: #deleteBlock to: self))