as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitDamage id) do: [:damage :damageEntity |
		(aUniverse getSingle: #Health of: damage target) ifNotNil: [:health |
			health current: health current - damage damage.
			health current <= 0 ifTrue: [aUniverse remove: damage target]].
		aUniverse remove: damageEntity]