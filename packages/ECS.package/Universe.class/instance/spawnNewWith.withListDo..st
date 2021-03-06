entity lifecycle
spawnNewWith: aListOfComponents withListDo: aBlock

	| entity arguments |
	entity := state allocateEntity.
	arguments := Array new: aListOfComponents size.
	aListOfComponents doWithIndex: [:componentClass :index |
		arguments at: index put: (state attach: componentClass to: entity)].
	aBlock value: arguments.
	^ entity