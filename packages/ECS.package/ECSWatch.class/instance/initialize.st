as yet unclassified
initialize

	super initialize.
	
	self 
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 2;
		color: (Color gray: 0.9);
		addMorph: (displayMorph := ECSWatchView new);
		startStepping