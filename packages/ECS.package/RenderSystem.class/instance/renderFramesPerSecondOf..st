as yet unclassified
renderFramesPerSecondOf: aWorld

	aWorld resource: DeltaTime do: [:deltaTime |
		font drawString: deltaTime fpsAverage asInteger asString at: 0 @ 0 @ 0 on: ogl]