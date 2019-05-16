as yet unclassified
renderFramesPerSecondOf: aUniverse on: aCanvas

	aUniverse query: {DeltaTime} do: [:deltaTime |
		 aCanvas drawString: deltaTime fpsAverage asInteger asString at: 0 @ 0]