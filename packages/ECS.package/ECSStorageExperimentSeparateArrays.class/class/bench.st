as yet unclassified
bench

	| components p |
	components := self new sized: ECSStorageExperimentConfig entityCount.
	
	p := 1 @ 1.
	^ [ 1 to: ECSStorageExperimentConfig frameCount do: [ :i |
			components do: [:c | c x: c x - 0.1; y: c y + 0.15].
			components do: [:c | c point: p].
			"components do: [:c | c color: (c color mixed: 0.3 with: Color white)]"]] bench