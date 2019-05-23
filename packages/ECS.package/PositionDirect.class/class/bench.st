as yet unclassified
bench

	| storage |
	storage := VectorStorage new.
	
	1 to: ECSStorageExperimentConfig entityCount do: [:i | storage at: i put: (PositionDirect new x: 0; y: 0)].
	
	ECSStorageExperimentConfig frameCount timesRepeat: [
		storage]