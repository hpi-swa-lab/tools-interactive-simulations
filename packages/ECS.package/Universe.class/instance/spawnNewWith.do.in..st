entity lifecycle
spawnNewWith: aListOfComponents do: aBlock in: aState

	| entity arguments |
	entity := aState allocateEntity.
	arguments := Array new: aListOfComponents size.
	aListOfComponents withIndexDo: [:componentClass :index |
		arguments at: index put: (aState attach: componentClass to: entity)].
	aBlock valueWithArguments: arguments.
	^ entity