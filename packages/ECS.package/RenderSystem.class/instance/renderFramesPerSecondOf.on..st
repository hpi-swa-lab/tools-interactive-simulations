as yet unclassified
renderFramesPerSecondOf: aWorld on: aCanvas

	aWorld resource: DeltaTime do: [:deltaTime |
		 aCanvas drawString: deltaTime fpsAverage asInteger asString at: 0 @ 0]