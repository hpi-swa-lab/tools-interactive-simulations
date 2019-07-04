initialization
initializeFor: aUniverse

	super initialize.
	
	universe := aUniverse.
	panels := Dictionary new.
	dataFlowConnections := #().
	
	universe when: #postTick send: #postTickToDataFlowDestinations to: self.
	
	self
		setLabel: universe className;
		paneColor: Color white;
		minimumExtent: self defaultMinimumExtent;
		
		addMorph: (ECSUniverseViewMorph newFor: universe)
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.4 @ 0.8));
		
		addMorph: (panels at: #leftPanel put: (self createPanelFor: self leftPanelToolsClasses))
		fullFrame: (LayoutFrame fractions: (0.4 @ 0 corner: 0.6 @ 1));
		
		addMorph: (panels at: #bottomPanel put: (self createPanelFor: self bottomPanelToolsClasses))
		fullFrame: (LayoutFrame fractions: (0 @ 0.8 corner: 0.4 @ 1));
		
		addMorph: (panels at: #rightPanel put: (self createPanelFor: self rightPanelToolsClasses))
		fullFrame: (LayoutFrame fractions: (0.6 @ 0.0 corner: 1.0 @ 1.0))