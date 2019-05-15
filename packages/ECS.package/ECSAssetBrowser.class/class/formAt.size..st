as yet unclassified
formAt: aFile size: aPoint

	^ self assetAt: aFile fullName, '@', aPoint asPoint asString ifAbsentPut: [(self loadForm: aFile) scaledIntoFormOfSize: aPoint asPoint]