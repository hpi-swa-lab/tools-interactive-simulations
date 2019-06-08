as yet unclassified
generateForm: anECSVector2

	| form noise1 noise2 tree grass water wheat0 wheat1 |
	noise1 := AnnoNoiseGenerator noiseAt: anECSVector2 / 100 seed: 1602.
	noise2 := AnnoNoiseGenerator noiseAt: anECSVector2 / 30 seed: 1503.

	tree := ECSImageAsset of: #anno at: '1458.png' sized: 64 , 36.
	grass := ECSImageAsset of: #anno at: '0.png' sized: 64 , 31.
	water := ECSImageAsset of: #anno at: '680.png' sized: 64 , 31.
	wheat0 := ECSImageAsset of: #anno at: '614.png' sized: 64 , 31.
	wheat1 := ECSImageAsset of: #anno at: '615.png' sized: 64 , 35.

	form := true caseOf: {
		[noise1 < 0.1] -> [water].
		[noise1 < 0.2] -> [water].
		[noise1 < 0.75 and: [noise2 > 0.7]] -> [tree].
		[noise1 < 0.75 and: [noise2 <= 0.8]] -> [grass].
		[noise1 < 0.9] -> [wheat1].
		[noise1 <= 1.0] -> [wheat0].
	}.
	^ form.
	