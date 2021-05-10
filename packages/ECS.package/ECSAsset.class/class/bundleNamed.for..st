as yet unclassified
bundleNamed: aSymbol for: anObject

	^ ECSAssetBrowser assetCache at: aSymbol ifAbsent: [
		(MCRepositoryGroup default repositories
			detect: [:repo | (repo isKindOf: MCFetchGithubRepository) and: [repo goferReferences anySatisfy: [:ref | ref name beginsWith: 'ECS-']]]
			ifFound: [:repo |
				(self
					filepathForDirectory: repo directory containingDirectory / 'assets' / aSymbol
					identifier: anObject) ifNotNil: [:path |
					ECSAssetBrowser
						registerAssetBundle: aSymbol
						forDirectory: path
						requestedIdentifier: anObject
						assetClass: self]]
			ifNone: [nil]) ifNil: [
			ECSAssetBundleMissingException new
				bundleName: aSymbol;
				identifier: anObject;
				assetClass: self;
				signal]]