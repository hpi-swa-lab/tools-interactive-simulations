as yet unclassified
saveSnapshotInNewUniverseClassNamed: aClassNameString

	self
		saveSnapshotInNewUniverseClassNamed: aClassNameString
		inCategory: 'ECS-', ((aClassNameString endsWith: 'Universe')
			ifTrue: [aClassNameString allButLast: 'Universe' size]
			ifFalse: [aClassNameString])