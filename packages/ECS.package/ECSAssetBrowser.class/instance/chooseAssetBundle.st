as yet unclassified
chooseAssetBundle

	| bundle |
	bundle := UIManager default chooseFrom: (self class assetCache keys) values: self class assetCache values.
	bundle ifNotNil: [:b | currentBundle := b].
	self updateCurrentAssetList