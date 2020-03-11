as yet unclassified
instancePersistedIn: aUniverse

	| entity |
	entity := aUniverse spawnNewPersistedWith: (components collect: [:c | c className asSymbol]).
	
	components do: [:component |
		component class fieldsDo: [:name :mutate |
			aUniverse set: name in: component className asSymbol of: entity to: (component perform: name) persist: true]].
	
	aUniverse attach: #InstanceOfTemplate to: entity persisted: true.
	aUniverse set: #template in: #InstanceOfTemplate of: entity to: self name persist: true.
	^ entity