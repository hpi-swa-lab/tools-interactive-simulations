api
query: aListOfComponentClasses do: aBlock spread: aBoolean

	| lists filledComponents |
	lists := aListOfComponentClasses collect: [:class | components at: class value ifAbsentPut: [self constructStorageFor: class]].
	
	filledComponents := Array new: aListOfComponentClasses size.
	1 to: maxEntityIndex do: [:entityIndex |
		self
			fetchComponentsInto: filledComponents
			componentLists: lists
			at: entityIndex
			do: aBlock
			componentClasses: aListOfComponentClasses
			spread: aBoolean]