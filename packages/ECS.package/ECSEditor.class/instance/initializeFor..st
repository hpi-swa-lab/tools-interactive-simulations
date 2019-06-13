as yet unclassified
initializeFor: aUniverse

	super initialize.
	
	universe := aUniverse.
	
	self paneColor: Color white.
	self minimumExtent: self defaultMinimumExtent.
	
	self
		setLabel: universe className;
		addMorph: (self createPanelFor: self leftPanelToolsClasses)
		fullFrame: (LayoutFrame fractions: (0 @ 0.0 corner: 0.18 @ 0.8)).
	self
		addMorph: (UniverseMorph new universe: universe)
		fullFrame: (LayoutFrame fractions: (0.18 @ 0 corner: 0.7 @ 0.8)).
	self
		addMorph: (self createPanelFor: self bottomPanelToolsClasses)
		fullFrame: (LayoutFrame fractions: (0.0 @ 0.8 corner: 0.7 @ 1.0)).
	self
		addMorph: (self createPanelFor: self rightPanelToolsClasses)
		fullFrame: (LayoutFrame fractions: (0.7 @ 0.0 corner: 1.0 @ 1.0))