as yet unclassified
of: aSymbol at: aString

	^ (ECSAssetBrowser assetCache
		at: aSymbol
		ifAbsent: [ECSAssetBundleMissingException new bundleName: aSymbol; signal]) assetAt: aString