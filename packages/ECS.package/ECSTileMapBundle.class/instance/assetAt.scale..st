as yet unclassified
assetAt: aRectangle scale: aNumber

	| size |
	size := aRectangle extent * aNumber.
	^ assets at: (aRectangle origin extent: size) ifAbsentPut: [
		ECSScaledTileMapAsset new
			form: ((self formFor: aRectangle) scaledIntoFormOfSize: size);
			identifier: aRectangle;
			bundle: self;
			scale: aNumber;
			yourself]