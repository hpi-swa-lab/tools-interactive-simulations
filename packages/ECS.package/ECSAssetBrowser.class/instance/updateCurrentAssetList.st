as yet unclassified
updateCurrentAssetList

	assetList removeAllMorphs.
	
	bundleButton label: (currentBundle ifNotNil: #title ifNil: ['- Choose Bundle -']).
	
	currentBundle ifNotNil: [currentBundle assets select: #isSource thenDo: [:asset | self addAsset: asset]]