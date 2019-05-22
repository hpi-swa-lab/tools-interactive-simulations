as yet unclassified
universe: aUniverse components: aListOfComponentClasses

	componentClasses := aListOfComponentClasses.
	maxIndex := aUniverse maxEntityIndex.
	componentLists := aListOfComponentClasses collect: [:class |
		aUniverse components at: class value ifAbsent: [^ self]].
	filledComponents := Array new: aListOfComponentClasses size.
	index := 1