as yet unclassified
tick: aUniverse

	aUniverse query: #(Transform ParticleEmitter) do: [:transform :particles |
		particles lifetimeMax <= 0 ifTrue: [^ self].
		aUniverse spawnNewWith: #(Transform Rendered ParticlePhysics) do: [:particleTransform :rendered :physics |
			particleTransform bounds: (transform bounds center copy extent: 2@2).
			physics lifetime: (Random new nextInt: particles lifetimeMax).
			rendered color: particles color copy.
			physics direction: particles direction copy.
			physics randomness: particles randomness]]