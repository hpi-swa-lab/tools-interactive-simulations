as yet unclassified
addAssetBundle

	| name path |
	name := (UIManager default request: 'Name for the Bundle:') ifEmpty: [^ self].
	path := (UIManager default chooseDirectory: 'Root Path of the Bundle') ifNil: [^ self].
	
	currentBundle := self class registerAssetBundle: name asSymbol forDirectory: path.
	self updateCurrentAssetList