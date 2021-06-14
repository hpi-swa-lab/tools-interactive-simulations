as yet unclassified
initialize

	super initialize.
	
	title := SBTextBubble new placeholderText: 'System Name'; hResizing: #spaceFill.
	
	self
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			changeTableLayout; 
			hResizing: #spaceFill;
			cellGap: 8;
			addMorphBack: (collapseIcon := SBIcon iconChevronDown on: #click send: #toggleCollapsed to: self);
			addMorphBack: title;
			addMorphBack: (SBIcon iconRemove on: #click send: #deleteSystem to: self))