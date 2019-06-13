as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		universe query: #(Transform) do: [:transform |
				canvas fillRectangle: transform bounds color: ECSColor blue]]
	