as yet unclassified
in: aUniverse neighborsOf: aPoint query: aComponentList do: aBlock

	#((0 1) (1 0) (-1 0) (0 -1)) do: [:delta |
		positionStorage at: (self pointGridHashX: aPoint x + delta first y: aPoint y + delta second) ifPresent: [:entities |
			entities do: [:entity | | components |
				components := aUniverse get: aComponentList of: entity.
				" check if all components were alive "
				components ifNotNil: [
					aUniverse incrementAccess.
					aBlock valueWithArguments: components]]]]