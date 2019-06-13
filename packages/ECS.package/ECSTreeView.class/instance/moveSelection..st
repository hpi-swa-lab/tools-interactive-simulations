accessing
moveSelection: aNumber

	| index |
	list hasSubmorphs ifFalse: [^ self].
	
	selectedMorph ifNil: [^ list firstSubmorph select].
	index := (list submorphIndexOf: selectedMorph) + aNumber clampLow: 1 high: list submorphCount.
	(list submorphs at: index) select