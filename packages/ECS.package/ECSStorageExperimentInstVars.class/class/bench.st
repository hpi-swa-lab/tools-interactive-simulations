as yet unclassified
bench

	| components |
	components := OrderedCollection new.
	ECSStorageExperimentConfig entityCount timesRepeat: [components add: (self new color: Color red; x: 0; y: 0)].
		
	^[ ECSStorageExperimentConfig frameCount timesRepeat: [
			components do: [:c | c x: c x - 0.1; y: c y + 0.15].
			components do: [:c | c point: c x @ c y].
			"components do: [:c | c color: (c color mixed: 0.3 with: Color white)]"]] timeToRun