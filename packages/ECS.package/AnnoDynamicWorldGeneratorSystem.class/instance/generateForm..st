as yet unclassified
generateForm: anECSVector2

	| form noise1 noise2 grass water wheat0 wheat1 r tree1 tree2 tree3 trees |
	noise1 := AnnoNoiseGenerator noiseAt: anECSVector2 / 100 seed: 1602.
	noise2 := AnnoNoiseGenerator noiseAt: anECSVector2 / 30 seed: 1503.

	tree1 := ECSImageAsset of: #anno at: '1458.png' sized: 64 , 36.
	tree2 := ECSImageAsset of: #anno at: '1463.png' sized: 64 , 40.
	tree3 := ECSImageAsset of: #anno at: '1460.png' sized: 64 , 49.
	trees := {tree1. tree2. tree3}.
	grass := ECSImageAsset of: #anno at: '0.png' sized: 64 , 31.
	water := ECSImageAsset of: #anno at: '680.png' sized: 64 , 31.
	wheat0 := ECSImageAsset of: #anno at: '614.png' sized: 64 , 31.
	wheat1 := ECSImageAsset of: #anno at: '615.png' sized: 64 , 35.

	r := Random seed: ((anECSVector2 x asString, '|', anECSVector2 y) hash).

	form := true caseOf: {
		[noise1 < 0.1] -> [water].
		[noise1 < 0.2] -> [water].
		[noise1 < 0.75 and: [noise2 >= 0.7]] -> [ | forestiness |
			forestiness := noise2 - 0.7 * (0.8 / 0.3) + 0.2.
			r next < forestiness ifTrue: [trees atRandom: r] ifFalse: [grass]].
		[noise1 < 0.75] -> [grass].
		[noise1 < 0.9] -> [wheat1].
		[noise1 <= 1.0] -> [wheat0].
	}.
	^ form.
	