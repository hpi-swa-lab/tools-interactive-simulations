as yet unclassified
riverTileFor: aPoint in: aUniverse config: aConfig

	| positions top left bottom right |
	positions := (aUniverse storageOf: OnebitPosition).
	left := false. positions in: aUniverse at: aPoint - (1, 0) query: {OnebitWater} do: [:water | left := true].
	right := false. positions in: aUniverse at: aPoint + (1, 0) query: {OnebitWater} do: [:water | right := true].
	bottom := false. positions in: aUniverse at: aPoint + (0, 1) query: {OnebitWater} do: [:water | bottom := true].
	top := false. positions in: aUniverse at: aPoint - (0, 1) query: {OnebitWater} do: [:water | top := true].
	
	" closed on all sides "
	(left and: [right and: [bottom and: [top]]]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (8 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 0].
	" closed on three sides"
	(left and: [right and: [bottom]]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (9 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 90].
	(left and: [right and: [top]]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (9 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: -90].
	(left and: [bottom and: [top]]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (9 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 180].
	(right and: [bottom and: [top]]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (9 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 0].
	" closed on two sides "
	(right and: [bottom]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (10 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 0].
	(left and: [bottom]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (10 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 90].
	(left and: [top]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (10 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 180].
	(right and: [top]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (10 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 270].
	(bottom and: [top]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (8 , 4 extent: aConfig tileSize) scale: aConfig scale rotation: 0].
	(left and: [right]) ifTrue: [^ ECSTileMapAsset of: #onebit at: (8 , 4 extent: aConfig tileSize) scale: aConfig scale rotation: 90].
	" close on one side "
	(top) ifTrue: [^ ECSTileMapAsset of: #onebit at: (12 , 4 extent: aConfig tileSize) scale: aConfig scale rotation: 180].
	(bottom) ifTrue: [^ ECSTileMapAsset of: #onebit at: (12 , 4 extent: aConfig tileSize) scale: aConfig scale rotation: 0].
	(right) ifTrue: [^ ECSTileMapAsset of: #onebit at: (12 , 4 extent: aConfig tileSize) scale: aConfig scale rotation: 270].
	(left) ifTrue: [^ ECSTileMapAsset of: #onebit at: (12 , 4 extent: aConfig tileSize) scale: aConfig scale rotation: 90].
	
	^ ECSTileMapAsset of: #onebit at: (8 , 5 extent: aConfig tileSize) scale: aConfig scale rotation: 0