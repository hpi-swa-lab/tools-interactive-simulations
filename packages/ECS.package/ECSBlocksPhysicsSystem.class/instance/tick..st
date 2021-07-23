as yet unclassified
tick: aUniverse

	aUniverse query: #(#UniverseView) do: [:view |
		aUniverse query: #(#DeltaTime) do: [:deltaTime |
			aUniverse query: {#Transform. #Physics} do: [:transform :physics |
				transform bounds position: transform bounds origin + (physics velocity * deltaTime dt).
				
				transform bounds clampToRectangle: (0 @ 0 extent: view size).
				"check collision with screen bounds"
				(transform bounds bottom >= view size y or: [transform bounds top <= 0]) ifTrue: [physics velocity y: physics velocity y negated]]]]