as yet unclassified
initialize

	super initialize.
	
	self
		addMorphBack: (x := ECSNumberInput new contents: '0');
		addMorphBack: (ECSLabel new contents: '@');
		addMorphBack: (y := ECSNumberInput new contents: '0');
		hResizing: #shrinkWrap