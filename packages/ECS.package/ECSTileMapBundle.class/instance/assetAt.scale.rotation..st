as yet unclassified
assetAt: aRectangle scale: aNumber rotation: anotherNumber
	" rotation is a number in degrees of clock-wise rotation "

	| size |
	anotherNumber = 0 ifTrue: [^ self assetAt: aRectangle scale: aNumber].
	
	size := aRectangle extent * aNumber.
	^ assets at: (aRectangle origin extent: size) ifAbsentPut: [
		ECSScaledTileMapAsset new
			form: ((self formFor: aRectangle) rotateBy: anotherNumber magnify: aNumber smoothing: 1);
			identifier: aRectangle;
			bundle: self;
			scale: aNumber;
			rotation: anotherNumber;
			yourself]