as yet unclassified
assetAt: aRectangle scale: aNumber rotation: anotherNumber
	" rotation is a number in degrees of clock-wise rotation "

	| hash |
	anotherNumber = 0 ifTrue: [^ self assetAt: aRectangle scale: aNumber].
	
	hash := (aRectangle hash bitXor: aNumber) bitXor: anotherNumber.
	
	^ assets at: hash ifAbsentPut: [
		anotherNumber \\ 90 = 0
			ifTrue: [ | size |
				size := aRectangle extent * aNumber.
				ECSScaledTileMapAsset new
					form: (((self formFor: aRectangle)
						rotateBy: (anotherNumber \\ 360 caseOf: {[0] -> [#none]. [90] -> [#right]. [180] -> [#pi]. [270] -> [#left]}) centerAt: aRectangle extent // 2)
						scaledIntoFormOfSize: size);
					identifier: aRectangle;
					bundle: self;
					scale: aNumber;
					rotation: anotherNumber;
					yourself]
			ifFalse: [ECSScaledTileMapAsset new
				form: ((self formFor: aRectangle) rotateBy: anotherNumber magnify: aNumber smoothing: 1);
				identifier: aRectangle;
				bundle: self;
				scale: aNumber;
				rotation: anotherNumber;
				yourself]]