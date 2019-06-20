as yet unclassified
button: anAsset at: aVector down: aBoolean x: aNumber y: anotherNumber active: anotherBoolean on: aCanvas

	anotherBoolean ifTrue: [aCanvas fillRectangle: (aVector extent: anAsset extent) color: Color white].
	anAsset drawOn: aCanvas at: aVector.	
	^ aBoolean and: [aNumber >= aVector x and: [aNumber <= (aVector x + anAsset extent x) and: [anotherNumber >= aVector y and: [anotherNumber <= (aVector y + anAsset extent y)]]]]