as yet unclassified
in: aUniverse neighborsOf: aPoint query: aComponentList do: aBlock
	
	#((0 1) (1 0) (-1 0) (0 -1)) do: [:delta | | x y |
		x := aPoint x + delta first.
		y := aPoint y + delta second.
		(y >= 0 and: [y < extent y and: [x >= 0 and: [x < extent x]]]) ifTrue: [
			((positionStorage at: ((aPoint y + delta second) * extent x + (aPoint x + delta first) + 1)) ifNil: #()) do: [:entity | | components |
				components := aUniverse get: aComponentList of: entity.
				" check if all components were alive "
				components ifNotNil: [
					aUniverse incrementAccess.
					aBlock valueWithArguments: components]]]]