as yet unclassified
initialize

	super initialize.

	self	changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			addMorphBack: (ECSBlockContainer newOf: ECSEntityBlock);
			addMorphBack: (ECSBlockContainer newOf: ECSComponentBlock))