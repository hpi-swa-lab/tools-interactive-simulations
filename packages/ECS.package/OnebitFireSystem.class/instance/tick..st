as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitBurning. Transform} do: [:burning :burningTransform |
		aUniverse query: {OnebitFlammable. Transform. #id} do: [:flammable :flammableTransform :flammableEntity |
			burningTransform bounds origin = flammableTransform bounds origin ifTrue: [
				aUniverse attach: OnebitBurning to: flammableEntity]]]