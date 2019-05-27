api
query: aListOfComponentClasses do: aBlock spread: aBoolean

	| lists |
	lists := aListOfComponentClasses collect: [:class | components at: class value ifAbsent: [^ self]].
	
	1 to: maxEntityIndex do: [:index | | filledComponents |
		filledComponents := Array new: aListOfComponentClasses size.
		self
			fetchComponentsInto: filledComponents
			componentLists: lists
			at: index
			do: aBlock
			componentClasses: aListOfComponentClasses
			spread: aBoolean]