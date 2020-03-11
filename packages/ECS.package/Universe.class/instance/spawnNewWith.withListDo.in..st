entity lifecycle
spawnNewWith: aListOfComponents withListDo: aBlock in: aState

	| entity arguments |
	entity := aState allocateEntity.
	arguments := Array new: aListOfComponents size.
	aListOfComponents doWithIndex: [:componentClass :index |
		arguments at: index put: (aState attach: componentClass to: entity)].
	aBlock value: arguments.
	^ entity