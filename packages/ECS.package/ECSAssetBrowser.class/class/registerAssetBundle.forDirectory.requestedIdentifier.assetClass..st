as yet unclassified
registerAssetBundle: aSymbol forDirectory: aFileDirectory requestedIdentifier: anObject assetClass: aClass

	| bundle |
	bundle := aClass bundleClass new
		title: aSymbol asSymbol;
		path: aFileDirectory;
		initialLoadWithRequested: anObject;
		yourself.
	self assetCache at: aSymbol asSymbol put: bundle.
	^ bundle