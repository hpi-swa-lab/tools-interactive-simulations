as yet unclassified
assetAt: aString sized: aPoint

	^ (self assets
		at: aString, '@', aPoint asString
		ifAbsentPut: [ECSImageAsset new
			identifier: aString;
			bundle: self title;
			object: ((self assets at: aString) object scaledIntoFormOfSize: aPoint);
			isDerived: true;
			yourself])