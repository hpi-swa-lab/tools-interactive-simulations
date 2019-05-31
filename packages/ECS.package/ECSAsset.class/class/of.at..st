as yet unclassified
of: aSymbol at: anObject

	^ (ECSAssetBrowser assetCache
		at: aSymbol
		ifAbsent: [ECSAssetBundleMissingException new bundleName: aSymbol; identifier: anObject; assetClass: self; signal]) assetAt: anObject