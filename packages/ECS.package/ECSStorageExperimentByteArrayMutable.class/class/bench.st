as yet unclassified
bench

	| components |
	components := self new sized: ECSStorageExperimentConfig entityCount.
	
	^[ ECSStorageExperimentConfig frameCount timesRepeat: [ 
			components do: [:c | c x: c x - 0.1; y: c y + 0.15].
			components do: [:c | c point: c x @ c y].
			"components do: [:c | c color: (c color mix: 0.3 with: Color white)]"]] bench