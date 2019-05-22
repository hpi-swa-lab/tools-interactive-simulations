as yet unclassified
bench

	| components |
	components := OrderedCollection new.
	ECSStorageExperimentConfig entityCount timesRepeat: [components add: (self new color: ECSMutableColor black; point: ECSMutablePoint new; x: 0;  y: 0)].
	
	^[ ECSStorageExperimentConfig frameCount timesRepeat: [
			components do: [:c | c x: c x - 0.1; y: c y + 0.15].
			components do: [:c | c point x: c x; y: c y].
			"components do: [:c | c color mix: 0.3 with: ECSMutableColor white]"]] timeToRun