entity lifecycle
spawnNewWith: aListOfComponents withListDo: aBlock

	| entity arguments |
	entity := self allocateEntity.
	arguments := Array new: aListOfComponents size.
	aListOfComponents doWithIndex: [:componentClass :index |
		arguments at: index put: (self attach: componentClass to: entity)].
	aBlock value: arguments.
	^ entity