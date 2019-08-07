as yet unclassified
tick: aUniverse

	aUniverse query: #(DemoPlayerControlled Physics) do: [:controlled :physics | | vel |
		vel := 0 , 0.
		aUniverse query: #(KeyEvent) do: [:event |
			event key = $W ifTrue: [vel y: -10].
			event key = $A ifTrue: [vel x: -5].
			event key = $D ifTrue: [vel x: 5]].
		physics velocity += vel * 0.1]