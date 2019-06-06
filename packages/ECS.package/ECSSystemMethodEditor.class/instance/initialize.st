as yet unclassified
initialize

	super initialize.
	
	self
		changeProportionalLayout;
		addMorph: (editor := ECSCodeMethodEditor new
			replaceOnSelectorChange: true;
			wrapFlag: true) fullFrame: (LayoutFrame fractions: (0 @ 0  corner: 1 @ 1));
		addEdgeGrips;
		"hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;"
		layoutInset: (TextStyle defaultFont height / 16) ceiling;
		addMorph: (ECSTranslateButton new target: self) fullFrame: (LayoutFrame fractions: (1 @ 0 corner: 1 @ 0))