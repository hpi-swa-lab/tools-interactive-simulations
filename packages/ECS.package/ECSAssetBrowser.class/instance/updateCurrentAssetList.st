as yet unclassified
updateCurrentAssetList

	assetList removeAllMorphs.
	bundleButton label: (currentBundle ifNotNil: #title ifNil: ['- Choose Bundle -']).
	currentBundle ifNotNil: [currentBundle assets select: #isSource thenDo: [:asset | self addAsset: asset]].
	
	parameters removeAllMorphs.
	currentBundle class parameters do: [:paramPair | | dataClass |
		dataClass :=  Smalltalk at: paramPair second.
		parameters
			addMorphBack: (ECSLabel new contents: paramPair first, ':');
			addMorphBack: (dataClass editorType new value: dataClass ecsDefault)]