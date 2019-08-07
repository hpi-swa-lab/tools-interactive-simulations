as yet unclassified
tick: aUniverse

	aUniverse query: #(Rendered OnebitPosition) do: [:rendered :position |
		rendered form drawOn: aUniverse canvas at: position * 24]