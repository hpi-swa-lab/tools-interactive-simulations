as yet unclassified
tick: aUniverse

	[systems select: #value thenDo: [:each | each key tick: aUniverse]] 
			on: Exception do: [:err | self pause. err signal]