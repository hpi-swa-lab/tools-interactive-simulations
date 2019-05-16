as yet unclassified
updateCurrentAssetList

	assetList removeAllMorphs.
	
	bundleButton label: (currentBundle ifNotNil: #title ifNil: ['- Choose Bundle -']).
	
	currentBundle ifNotNil: [currentBundle assets do: [:asset | self addAsset: asset]]