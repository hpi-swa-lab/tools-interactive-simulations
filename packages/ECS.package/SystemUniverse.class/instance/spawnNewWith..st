entity lifecycle
spawnNewWith: aListOfComponents

	| entity |
	entity := self allocateEntity.
	aListOfComponents do: [:component | self attach: component to: entity].
	^ entity