as yet unclassified
registerMissingAssetBundle: aSymbol

	| bundle |
	bundle := ECSMissingAssetBundle new
		title: aSymbol asSymbol;
		yourself.
	self assetCache at: aSymbol asSymbol put: bundle.
	^ bundle