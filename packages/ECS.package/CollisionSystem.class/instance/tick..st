as yet unclassified
tick: aUniverse

	aUniverse query: {ScreenSize} do: [:screenSize | | colliders |
		colliders := aUniverse queryList: {Transform. Rendered. Physics. Colliding. #id}.
		self collide: colliders withBounds: screenSize.
		
		1 to: colliders size do: [:i |
			i + 1 to: colliders size do: [:j | | a b |
				a := (colliders at: i).
				b := (colliders at: j).
				((a fourth ignoreList includes: b fifth) or: [a fourth ignoreList includes: b fifth]) ifFalse: [self collide: a with: b]]]]