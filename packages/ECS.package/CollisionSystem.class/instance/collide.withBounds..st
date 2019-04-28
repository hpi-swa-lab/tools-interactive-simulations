as yet unclassified
collide: aCollection withBounds: aPoint

	aCollection do: [:components | | position size rect |
		position := components first position.
		size := components second size.
		rect := position extent: size.
		
		rect bottom >= aPoint size y ifTrue: [
			components first position: position x @ (aPoint size y - size y).
			components third velocity: components third velocity x @ 0].
		rect left < 0 ifTrue: [
			components first position: 0 @ position y.
			components third velocity: 0 @ components third velocity y].
		rect right >= aPoint size x ifTrue: [
			components first position: (aPoint size x - size x) @ position y.
			components third velocity: 0 @ components third velocity y]].