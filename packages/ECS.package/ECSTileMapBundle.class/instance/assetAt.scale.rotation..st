as yet unclassified
assetAt: aRectangle scale: aNumber rotation: anotherNumber
	" rotation is a number in degrees of clock-wise rotation "

	| size |
	size := aRectangle extent * aNumber.
	^ assets at: (aRectangle origin extent: size) ifAbsentPut: [
		ECSScaledTileMapAsset new
			form: ((self formFor: aRectangle) rotateBy: anotherNumber magnify: size smoothing: 1);
			identifier: aRectangle;
			bundle: self;
			scale: aNumber;
			rotation: anotherNumber;
			yourself]