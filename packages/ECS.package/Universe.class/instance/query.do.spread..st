api
query: aListOfComponentClasses do: aBlock spread: aBoolean

	| lists filledComponents |
	lists := aListOfComponentClasses collect: [:class | components at: class value ifAbsent: [^ self]].
	
	filledComponents := Array new: aListOfComponentClasses size.
	1 to: maxEntityIndex do: [:entityIndex |
		self
			fetchComponentsInto: filledComponents
			componentLists: lists
			at: entityIndex
			do: aBlock
			componentClasses: aListOfComponentClasses
			spread: aBoolean]