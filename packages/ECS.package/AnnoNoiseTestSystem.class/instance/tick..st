as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe | | gradPAndPerm1 gradPAndPerm2 |
		gradPAndPerm1 := self gradPAndPerm: 1602.
		gradPAndPerm2 := self gradPAndPerm: 1503.
		1 to: MapSize do: [:y | 1 to: MapSize do: [:x | | noise1 color noise2 |
			noise1 := self noiseAt: x@y / 100 gradPAndPerm: gradPAndPerm1.
			noise2 := self noiseAt: x@y / 30 gradPAndPerm: gradPAndPerm2.
			
			color := true caseOf: {
				[noise1 < 0.1] -> [Color fromString: '#003366'].
				[noise1 < 0.2] -> [Color fromString: '#0066dc'].
				[noise1 < 0.75 and: [noise2 > 0.7]] -> [Color lime darker darker darker].
				[noise1 < 0.75 and: [noise2 <= 0.8]] -> [Color green].
				[noise1 < 0.9] -> [Color gray].
				[noise1 <= 1.0] -> [Color white].
			}.
			canvas fillRectangle: (((x@y) * Size) extent: Size@Size) color: color]]]