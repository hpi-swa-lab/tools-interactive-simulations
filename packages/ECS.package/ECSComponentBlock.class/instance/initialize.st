as yet unclassified
initialize

	super initialize.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: SBIcon iconChevronRight;
			addMorphBack: (SBTextBubble new placeholderText: 'Component Name');
			addMorphBack: (SBIcon iconRemove on: #click send: #deleteBlock to: self));
		addMorphBack: ECSComponentBlockField new