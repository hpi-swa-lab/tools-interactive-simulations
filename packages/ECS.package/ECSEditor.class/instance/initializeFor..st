as yet unclassified
initializeFor: aWorld

	super initialize.
	
	world := aWorld.
	self addMorph: (SystemWorldMorph new systemWorld: world) fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.8 @ 0.8)).
	
	self
		addMorph: (ECSPanel new
			addMorphBack: (ECSControlBar newFor: world))
		fullFrame: (LayoutFrame fractions: (0 @ 0.8 corner: 0.8 @ 1.0)).
	self
		addMorph: (ECSPanel new
			addMorphBack: (ECSSystemEditor newFor: world);
			addMorphBack: ECSEntityComponentFilter new;
			addMorphBack: ECSEntityComponentFilter new)
		fullFrame: (LayoutFrame fractions: (0.8 @ 0.0 corner: 1.0 @ 1.0))