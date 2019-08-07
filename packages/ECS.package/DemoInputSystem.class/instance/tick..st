as yet unclassified
tick: aUniverse

	aUniverse query: #(DemoPlayerControlled Physics) do: [:controlled :physics |
		physics velocity x: 0 y: 0.
		aUniverse query: #(KeyEvent) do: [:event |
			event key = $W ifTrue: [physics velocity y: 10].
			event key = $A ifTrue: [physics velocity x: -10].
			event key = $D ifTrue: [physics velocity x: 10]]]