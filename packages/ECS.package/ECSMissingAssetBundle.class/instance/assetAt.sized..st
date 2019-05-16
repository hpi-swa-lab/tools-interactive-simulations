as yet unclassified
assetAt: aString sized: aPoint

	| form |
	form := Form extent: aPoint depth: 32.
	form getCanvas fillColor: (Color r: 1 g: 0 b: 1).
	^ form