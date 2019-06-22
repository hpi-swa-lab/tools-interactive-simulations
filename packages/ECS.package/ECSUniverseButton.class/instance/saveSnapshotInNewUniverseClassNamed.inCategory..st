snapshot saving
saveSnapshotInNewUniverseClassNamed: aClassNameString inCategory: aCategoryNameString

	| newClass |
	newClass :=Universe subclass: aClassNameString asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategoryNameString.
		
	self saveSnapshotInClass: newClass