as yet unclassified
initializeFor: aUniverse

	super initialize.
	
	universe := aUniverse.
	
	self paneColor: Color white.
	self minimumExtent: 1000@800 * (TextStyle defaultFont height / 16) rounded.
	
	self
		setLabel: universe className;
		addMorph: (ECSPanel new
			addMorphBack: (ECSTemplateBrowser newFor: universe);
			addMorphBack: (ECSStatsDisplay newFor: universe))
		fullFrame: (LayoutFrame fractions: (0 @ 0.0 corner: 0.18 @ 0.8)).
	self
		addMorph: (UniverseMorph new universe: universe)
		fullFrame: (LayoutFrame fractions: (0.18 @ 0 corner: 0.8 @ 0.8)).
	self
		addMorph: (ECSPanel new
			addMorphBack: (ECSControlBar newFor: universe);
			addMorphBack: (ECSSnapshotReplay newFor: universe))
		fullFrame: (LayoutFrame fractions: (0.0 @ 0.8 corner: 0.8 @ 1.0)).
	self
		addMorph: (ECSPanel new
			addMorphBack: (ECSMultiPipelineEditor newFor: universe);
			addMorphBack: (ECSComponentBrowser newFor: universe);
			addMorphBack: (ECSEntityComponentFilter newFor: universe))
		fullFrame: (LayoutFrame fractions: (0.8 @ 0.0 corner: 1.0 @ 1.0))