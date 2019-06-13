as yet unclassified
button: anAsset at: aVector down: aBoolean x: aNumber y: anotherNumber active: anotherBoolean on: aCanvas

	anotherBoolean ifTrue: [aCanvas fillRectangle: (aVector extent: anAsset extent) color: Color white].
	anAsset drawOn: aCanvas at: aVector.	
	^ aBoolean and: [aNumber , anotherNumber insideRectangleOrigin: aVector extent: anAsset extent]