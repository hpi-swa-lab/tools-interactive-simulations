as yet unclassified
initialize

	super initialize.
	
	title := SBTextBubble new placeholderText: 'Component Name'.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: (collapseIcon := SBIcon iconChevronDown on: #click send: #toggleCollapsed to: self);
			addMorphBack: (SBIcon iconPlus on: #click send: #addField to: self);
			addMorphBack: title;
			addMorphBack: (SBIcon iconRemove on: #click send: #deleteBlock to: self))