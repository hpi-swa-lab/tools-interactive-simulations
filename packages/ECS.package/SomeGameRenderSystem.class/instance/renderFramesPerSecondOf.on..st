as yet unclassified
renderFramesPerSecondOf: aUniverse on: aCanvas

	aUniverse query: #(DeltaTime) do: [:deltaTime |
		 aCanvas drawString: deltaTime fpsAverage asInteger asString at: 0 @ 0 font: nil color: Color white]