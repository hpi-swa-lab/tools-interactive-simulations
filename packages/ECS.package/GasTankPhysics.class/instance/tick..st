as yet unclassified
tick: aUniverse

	aUniverse query: #(#UniverseView) do: [:view |
		aUniverse query: #(#DeltaTime) do: [:deltaTime | | entities |
			entities := aUniverse queryList: {#Transform. #Physics. #id}.
			entities do: [:components | | position velocity friction |
				position := components first bounds origin.
				velocity := components second velocity.
				friction := components second friction / 100.
				components second velocity: velocity * (1.0 - (friction * deltaTime dt)).
				components first bounds position: components first bounds origin + (velocity * deltaTime dt).
				
				components first bounds clampToRectangle: (0 @ 0 extent: view size).
				(components first bounds bottom >= view size y or: [components first bounds top <= 0]) ifTrue: [components second velocity y: components second velocity y negated].
				(components first bounds right >= view size x or: [components first bounds left <= 0]) ifTrue: [components second velocity x: components second velocity x negated]]]]