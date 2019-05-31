as yet unclassified
bundleNamed: aSymbol for: anObject

	^ ECSAssetBrowser assetCache
		at: aSymbol
		ifAbsent: [ECSAssetBundleMissingException new bundleName: aSymbol; identifier: anObject; assetClass: self; signal]