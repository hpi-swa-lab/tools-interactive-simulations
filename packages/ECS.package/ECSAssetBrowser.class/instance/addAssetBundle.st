as yet unclassified
addAssetBundle

	| name path |
	name := (UIManager default request: 'Name for the Bundle:') ifEmpty: [^ self].
	path := (UIManager default chooseDirectory: 'Root Path of the Bundle') ifNil: [^ self].
	
	self flag: #fixme. "requestedIdentifier is required by e.g. tilemaps to know what dimension each tile has."
	currentBundle := self class registerAssetBundle: name asSymbol forDirectory: path requestedIdentifier: nil assetClass: ECSImageAsset.
	self updateCurrentAssetList