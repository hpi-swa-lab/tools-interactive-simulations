as yet unclassified
initialize

	super initialize.

	signature := SBStSignature new.

	self
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: signature)