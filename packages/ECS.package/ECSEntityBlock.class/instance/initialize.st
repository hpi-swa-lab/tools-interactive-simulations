as yet unclassified
initialize

	super initialize.
	
	title := SBTextBubble new placeholderText: 'Entity Name'; hResizing: #spaceFill.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			changeTableLayout; 
			hResizing: #spaceFill;
			cellGap: 8;
			addMorphBack: (collapseIcon := SBIcon iconChevronDown on: #click send: #toggleCollapsed to: self);
			addMorphBack: (SBIcon iconPlus on: #click send: #addComponent to: self);
			addMorphBack: title;
			addMorphBack: (SBIcon iconRemove on: #click send: #deleteBlock to: self))