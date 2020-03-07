as yet unclassified
universe: aUniverse components: aListOfComponentClasses

	componentClasses := aListOfComponentClasses.
	maxIndex := aUniverse state maxEntityIndex.
	componentLists := aListOfComponentClasses collect: [:class |
		aUniverse components at: class value ifAbsent: [index := aUniverse maxEntityIndex + 1. ^ self]].
	filledComponents := Array new: aListOfComponentClasses size.
	index := 1