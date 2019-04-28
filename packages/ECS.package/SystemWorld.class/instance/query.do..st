as yet unclassified
query: aListOfComponentClasses do: aBlock

	| lists |
	lists := aListOfComponentClasses collect: [:class | components at: class ifAbsent: [^ self]].
	1 to: maxEntityIndex do: [:index | | filledComponents |
		filledComponents := Array new: aListOfComponentClasses size.
		self fetchComponentsInto: filledComponents componentLists: lists at: index do: aBlock]