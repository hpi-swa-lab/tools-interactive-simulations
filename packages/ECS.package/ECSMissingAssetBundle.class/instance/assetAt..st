as yet unclassified
assetAt: aString

	| form |
	form := Form extent: 16 asPoint depth: 32.
	form getCanvas fillColor: (Color r: 1 g: 0 b: 1).
	^ form