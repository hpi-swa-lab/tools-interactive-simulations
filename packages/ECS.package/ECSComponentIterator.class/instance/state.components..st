as yet unclassified
state: aState components: aListOfComponentClasses

	componentClasses := aListOfComponentClasses.
	maxIndex := aState maxEntityIndex.
	componentLists := aListOfComponentClasses collect: [:class |
		aState components at: class value ifAbsent: [index := aState maxEntityIndex + 1. ^ self]].
	filledComponents := Array new: aListOfComponentClasses size.
	index := 1