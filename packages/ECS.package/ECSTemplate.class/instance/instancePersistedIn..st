as yet unclassified
instancePersistedIn: aUniverse

	| entity |
	entity := aUniverse spawnNewAutoPersistedWith: (components collect: [:c | c className asSymbol]).
	
	components do: [:component |
		component class fieldsDo: [:name :mutate |
			aUniverse
				autoPersistSet: name
				in: component className asSymbol
				of: entity
				to: (component perform: name) veryDeepCopy]].
	
	aUniverse autoPersistAttach: #InstanceOfTemplate to: entity.
	aUniverse autoPersistSet: #template in: #InstanceOfTemplate of: entity to: self name.
	^ entity