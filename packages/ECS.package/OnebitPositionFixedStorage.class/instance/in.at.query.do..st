as yet unclassified
in: aUniverse at: aPoint query: aComponentList do: aBlock

	| entities |
	(aPoint x < 0 or: [aPoint y < 0 or: [aPoint x > (extent x - 1) or: [aPoint y > (extent y - 1)]]]) ifTrue: [^ self].
	
	entities := (positionStorage at: (aPoint y * extent x + aPoint x + 1)) ifNil: [^ self].
	entities do: [:entity | | components |
		components := aUniverse get: aComponentList of: entity.
		" check if all components were alive "
		components size = aComponentList size ifTrue: [
			aUniverse incrementAccess.
			aBlock valueWithArguments: components]]