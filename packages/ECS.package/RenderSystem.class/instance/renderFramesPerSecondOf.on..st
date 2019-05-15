as yet unclassified
renderFramesPerSecondOf: aUniverse on: aCanvas

	aUniverse resource: DeltaTime do: [:deltaTime |
		 aCanvas drawString: deltaTime fpsAverage asInteger asString at: 0 @ 0]