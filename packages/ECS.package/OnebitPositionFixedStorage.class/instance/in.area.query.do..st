as yet unclassified
in: aUniverse area: aRectangle query: aComponentList do: aBlock

	| yHigh yLow |
	yLow := aRectangle origin y clampLow: 0 high: extent y - 1.
	yHigh := aRectangle corner y clampLow: 0 high: extent y - 1.
	(aRectangle origin x clampLow: 0 high: extent x - 1) to: (aRectangle corner x clampLow: 0 high: extent x - 1) do: [:x |
		yLow to: yHigh do: [:y |
			(positionStorage at: y * extent x + x + 1) ifNotNil: [:entities |
				entities do: [:entity | | components |
					aUniverse incrementAccess.
					components := aUniverse get: aComponentList of: entity.
					" check if all components were alive "
					components size = aComponentList size ifTrue: [
						aUniverse incrementAccess.
						aBlock valueWithArguments: components]]]]]