as yet unclassified
in: aUniverse at: aPoint query: aComponentList do: aBlock

	| entities |
	entities := positionStorage at: (self pointGridHashX: aPoint x y: aPoint y).
	entities do: [:entity | | components |
		components := aUniverse get: aComponentList of: entity.
		" check if all components were alive "
		components size = aComponentList size ifTrue: [aBlock valueWithArguments: components]]