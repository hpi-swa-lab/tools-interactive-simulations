as yet unclassified
partHorizontal: aBoolean config: aConfig

	^ ECSTileMapAsset
		of: #onebit
		at: (8 , 4 square: aConfig tileSize)
		scale: aConfig scale
		rotation: (aBoolean ifTrue: [90] ifFalse: [0])