as yet unclassified
initialize

	super initialize.
	
	self
		addMorphBack: (origin := ECSPointInput new);
		addMorphBack: (extent := ECSPointInput new);
		hResizing: #shrinkWrap