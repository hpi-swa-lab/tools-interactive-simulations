as yet unclassified
saveSnapshotInNewUniverseClass

	| newClassName |
	newClassName := UIManager default request: 'Enter name of new universe class'.
	newClassName ifEmpty: [^ self].
	newClassName := newClassName capitalized.
	(newClassName endsWith: 'Universe') ifFalse: [newClassName := newClassName, 'Universe'].
	self saveSnapshotInNewUniverseClassNamed: newClassName