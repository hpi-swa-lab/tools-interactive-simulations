as yet unclassified
tick: aUniverse

	| tiles MapSize grass trees random |
	tiles := aUniverse queryList: {AnnoTile}.
	tiles ifNotEmpty: [^ self].
	
	random := Random seed: 1602.
	MapSize := 50.
	
	"ECSAssetBrowser cleanCache"
	grass := ECSImageAsset of: #anno at: '0.png' sized: 64 , 31.
	trees := {
		ECSImageAsset of: #anno at: '1458.png' sized: 64 , 36.
		ECSImageAsset of: #anno at: '1459.png' sized: 64 , 42.
		ECSImageAsset of: #anno at: '1461.png' sized: 64 , 55.
		ECSImageAsset of: #anno at: '1463.png' sized: 64 , 40.
		ECSImageAsset of: #anno at: '1464.png' sized: 64 , 48.
	}.
	
	(0 to: MapSize - 1) do: [:x |
		(0 to: MapSize - 1) do: [:y |
			aUniverse spawnNewWith: {Label. AnnoTile. Rendered} do: [:label :annoTile :rendered | | growTree |
				growTree := (random nextInt: 2) = 2.
				label label: 'Tile ', x, ',', y.
				rendered color: (ECSColor rgba: (16rff000000 + (random nextInt: 16rffffff))).
				rendered form: (growTree ifTrue: [trees atRandom: random] ifFalse: [grass]).
				annoTile position: (ECSVector2 x: x y: y)]]]