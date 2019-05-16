as yet unclassified
registerAssetBundle: aSymbol forDirectory: aFileDirectory

	| bundle |
	bundle := ECSAssetBundle new
		title: aSymbol asSymbol;
		path: aFileDirectory;
		updatePreviews;
		yourself.
	self assetCache at: aSymbol asSymbol put: bundle.
	^ bundle