api
query: aListOfComponentClasses do: aBlock spread: aBoolean

	| lists filledComponents start |
	lists := aListOfComponentClasses collect: [:class | components at: class value ifAbsentPut: [self constructStorageFor: class]].
	
	start := queryLocalAccesses.
	
	filledComponents := Array new: aListOfComponentClasses size.
	1 to: maxEntityIndex do: [:entityIndex |
		self
			fetchComponentsInto: filledComponents
			componentLists: lists
			at: entityIndex
			do: aBlock
			componentClasses: aListOfComponentClasses
			spread: aBoolean].
	
	self triggerEvent: #queryReport withArguments: {queryLocalAccesses - start. aListOfComponentClasses}.
	queryLocalAccesses := start