entity lifecycle
spawnNewWith: aListOfComponents do: aBlock

	| entity arguments |
	entity := state allocateEntity.
	arguments := Array new: aListOfComponents size.
	aListOfComponents withIndexDo: [:componentClass :index |
		arguments at: index put: (self attach: componentClass to: entity)].
	aBlock valueWithArguments: arguments.
	^ entity