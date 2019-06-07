button methods
saveSnapshot

	| action |
	self universe class = Universe
		ifTrue: [self saveSnapshotInNewUniverseClass]
		ifFalse: [action :=
			UIManager default
				chooseFrom: {'Save into current class (', self universe class asString, ')'. 'Save as new universe class'}
				values: #(saveSnapshotInCurrentUniverseClass saveSnapshotInNewUniverseClass).
			action ifNotNil: [self perform: action]]