as yet unclassified
in: aUniverse area: aRectangle query: aComponentList do: aBlock

	aRectangle origin x to: aRectangle corner x do: [:x |
		aRectangle origin y to: aRectangle corner y do: [:y | | entities |
			entities := positionStorage at: (self pointGridHashX: x y: y).
			entities do: [:entity | aBlock value: (aUniverse get: aComponentList of: entity)]]]