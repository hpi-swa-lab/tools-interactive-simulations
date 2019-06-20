as yet unclassified
initializeFor: aUniverse

	super initialize.
	
	universe := aUniverse.
	panels := Dictionary new.
	
	self paneColor: Color white.
	self minimumExtent: self defaultMinimumExtent.
	
	self
		setLabel: universe className";
		addMorph: (panels at: #leftPanel put: (self createPanelFor: self leftPanelToolsClasses))
		fullFrame: (LayoutFrame fractions: (0 @ 0.0 corner: 0.18 @ 0.8))".
	self
		addMorph: (UniverseMorph new universe: universe)
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0.92)).
	self
		addMorph: (panels at: #bottomPanel put: (self createPanelFor: self bottomPanelToolsClasses))
		fullFrame: (LayoutFrame fractions: (0 @ 0.92 corner: 1 @ 1)).
	"self
		addMorph: (panels at: #rightPanel put: (self createPanelFor: self rightPanelToolsClasses))
		fullFrame: (LayoutFrame fractions: (0.7 @ 0.0 corner: 1.0 @ 1.0))"