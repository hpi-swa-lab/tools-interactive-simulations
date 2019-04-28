as yet unclassified
query: aListOfComponentClasses do: aBlock

	"(LazyComponentList new
		signature: aListOfComponentClasses;
		entities: self entities) do: aBlock"
	
	| lists |
	lists := aListOfComponentClasses collect: [:class | components at: class].
	1 to: self entities size do: [:index | | filledComponents |
		filledComponents := Array new: aListOfComponentClasses size.
		self fetchComponentsInto: filledComponents componentLists: lists at: index do: aBlock]