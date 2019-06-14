as yet unclassified
tick: aUniverse

	| camera tmp |
	tmp := (aUniverse queryList: #(AnnoCamera ScreenSize)).
	camera := self pixelToMapPosition: (tmp ifEmpty: [0@0] ifNotEmpty: [tmp first first position negated]).

	aUniverse draw: [:canvas :universe | 
		1 to: MapSize do: [:y | 1 to: MapSize do: [:x | | noise1 color noise2 |
			noise1 := AnnoNoiseGenerator noiseAt: (x@y + camera) / 100.0 seed: 1602.
			noise2 := AnnoNoiseGenerator noiseAt: (x@y + camera) / 30.0 seed: 1503.
			
			color := true caseOf: {
				[noise1 < 0.1] -> [Color fromString: '#003366'].
				[noise1 < 0.2] -> [Color fromString: '#0066dc'].
				[noise1 < 0.75 and: [noise2 > 0.7]] -> [Color lime darker darker darker].
				[noise1 < 0.75 and: [noise2 <= 0.8]] -> [Color green].
				[noise1 < 0.9] -> [Color gray].
				[noise1 <= 1.0] -> [Color white].
			}.
			canvas fillRectangle: (((x@y) * Size + (20,20)) extent: Size@Size) color: color]]]