as yet unclassified
assetAt: aString sized: aPoint

	^ (self assets
		at: aString, '@', aPoint asString
		ifAbsentPut: [ECSAsset new
			object: ((self assets at: aString) object scaledIntoFormOfSize: aPoint);
			isDerived: true;
			yourself])