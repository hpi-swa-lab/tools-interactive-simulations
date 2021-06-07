as yet unclassified
initialize

	| method signature |
	super initialize.
	
	title := SBTextBubble new placeholderText: 'Method Name'.
	method := (methodClass lookupSelector: #tick:) asSandblock hResizing: #spaceFill.
	signature := method signature.
	
	self
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: signature;
			addMorphBack: (SBIcon iconRemove on: #click send: #deleteBlock to: self));
		addMorphBack: method submorphs last