as yet unclassified
in: aUniverse neighborsOf: aPoint queryBlockedDo: aBlock
	
	#((0 1) (1 0) (-1 0) (0 -1)) do: [:delta | | x y |
		x := aPoint x + delta first.
		y := aPoint y + delta second.
		(y >= 0 and: [y < extent y and: [x >= 0 and: [x < extent x]]]) ifTrue: [ | blockedCost |
			blockedCost := 0.
			((positionStorage at: ((aPoint y + delta second) * extent x + (aPoint x + delta first) + 1)) ifNil: #()) do: [:entity | 
				blockedCost := blockedCost + ((aUniverse getSingle: #OnebitBlockMovement of: entity) ifNotNil: #cost ifNil: 0)].
			aBlock value: x , y value: blockedCost]]