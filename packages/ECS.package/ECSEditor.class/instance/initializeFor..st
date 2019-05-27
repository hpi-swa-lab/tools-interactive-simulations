as yet unclassified
initializeFor: aUniverse

	super initialize.
	
	universe := aUniverse.
	self addMorph: (SystemUniverseMorph new systemUniverse: universe) fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.8 @ 0.8)).
	
	self paneColor: Color white.
	
	self
		addMorph: (ECSPanel new
			addMorphBack: (ECSControlBar newFor: universe))
		fullFrame: (LayoutFrame fractions: (0 @ 0.8 corner: 0.8 @ 1.0)).
	self
		addMorph: (ECSPanel new
			addMorphBack: (ECSPipelineEditor newFor: universe);
			addMorphBack: (ECSComponentBrowser newFor: universe);
			addMorphBack: (ECSEntityComponentFilter newFor: universe))
		fullFrame: (LayoutFrame fractions: (0.8 @ 0.0 corner: 1.0 @ 1.0));
		minimumExtent: 1000@800 * (TextStyle defaultFont height / 16) rounded