as yet unclassified
in: aUniverse at: aPoint query: aComponentList do: aBlock

	| entities |
	entities := positionStorage at: (self pointGridHashX: aPoint x y: aPoint y) ifAbsent: [^ self].
	entities do: [:entity | | components |
		components := aUniverse get: aComponentList of: entity.
		" check if all components were alive "
		components ifNotNil: [
			aUniverse incrementAccess.
			aBlock valueWithArguments: components]]