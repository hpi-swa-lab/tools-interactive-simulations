as yet unclassified
addAssetBundle

	| name path |
	name := (UIManager default request: 'Name for the Bundle:') ifNil: [^ self].
	path := UIManager default chooseDirectory: 'Root Path of the Bundle'.
	
	self class assetCache at: name asSymbol put: (ECSAssetBundle new title: name asSymbol; path: path)