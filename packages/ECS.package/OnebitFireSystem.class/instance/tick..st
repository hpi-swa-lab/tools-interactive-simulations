as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitBurning OnebitPosition) do: [:burning :burningPosition |
		(aUniverse storageOf: #OnebitPosition) in: aUniverse at: burningPosition query: #(OnebitFlammable id) do: [:flammable :flammableEntity |
			aUniverse attach: #OnebitBurning to: flammableEntity]].