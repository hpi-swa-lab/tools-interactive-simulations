as yet unclassified
in: aUniverse area: aRectangle query: aComponentList do: aBlock

	aRectangle origin x to: aRectangle corner x do: [:x |
		aRectangle origin y to: aRectangle corner y do: [:y |
			positionStorage at: (self pointGridHashX: x y: y) ifPresent: [:entities |
				entities do: [:entity | | components |
					components := aUniverse get: aComponentList of: entity.
					" check if all components were alive "
					components size = aComponentList size ifTrue: [
						aUniverse incrementAccess.
						aBlock valueWithArguments: components]]]]]