snapshot saving
saveSnapshotInNewUniverseClass

	| name |
	
	name := (UIManager default request: 'Enter name of new universe class') ifEmpty: [^ self] ifNotEmpty: #capitalized.
	(name endsWith: 'Universe') ifFalse: [name := name, 'Universe'].
	self saveSnapshotInNewUniverseClassNamed: name