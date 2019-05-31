as yet unclassified
of: aSymbol at: aString sized: aPoint

	^ (ECSAssetBrowser assetCache
		at: aSymbol
		ifAbsent: [ECSAssetBundleMissingException new assetClass: self; identifier: aString; bundleName: aSymbol; signal]) assetAt: aString sized: aPoint