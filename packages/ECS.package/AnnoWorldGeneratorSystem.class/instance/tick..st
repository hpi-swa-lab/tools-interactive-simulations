as yet unclassified
tick: aUniverse

	| tiles grass trees noise |
	tiles := aUniverse queryList: #(AnnoTile).
	tiles ifNotEmpty: [^ self].
	
	"ECSAssetBrowser cleanCache"
	grass := ECSImageAsset of: #anno at: '0.png' sized: 64 , 31.
	trees := {
		ECSImageAsset of: #anno at: '1458.png' sized: 64 , 36.
		ECSImageAsset of: #anno at: '1459.png' sized: 64 , 42.
		ECSImageAsset of: #anno at: '1461.png' sized: 64 , 55.
		ECSImageAsset of: #anno at: '1463.png' sized: 64 , 40.
		ECSImageAsset of: #anno at: '1464.png' sized: 64 , 48.
	}.
	
	noise := self generateNoise.
	
	(0 to: MapSize - 1) do: [:x | (0 to: MapSize - 1) do: [:y |
		aUniverse spawnNewWith: #("Label "AnnoTile Rendered) do: [":label" :annoTile :rendered |
			| growTree |
			growTree := "(random nextInt: 2) = 2" (noise at: (x + 1) + (MapSize * y)) > 0.
			"label label: 'Tile ', x, ',', y."
			rendered color: (ECSColor rgba: (16rff000000 + (R nextInt: 16rffffff))).
			rendered form: (growTree ifTrue: [trees atRandom: R] ifFalse: [grass]).
			annoTile position: (ECSVector2 x: x y: y)]]]