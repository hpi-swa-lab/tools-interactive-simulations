as yet unclassified
query: aListOfComponentClasses do: aBlock spread: aBoolean

	| lists filledComponents start |
	lists := aListOfComponentClasses collect: [:class | self storageOf: class value].
	
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