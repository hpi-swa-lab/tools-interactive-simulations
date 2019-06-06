as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitBurning. OnebitPosition} do: [:burning :burningTransform |
		aUniverse query: {OnebitFlammable. OnebitPosition. #id} do: [:flammable :flammableTransform :flammableEntity |
			(burningTransform x = flammableTransform x and: [burningTransform y = flammableTransform y]) ifTrue: [
				aUniverse attach: OnebitBurning to: flammableEntity]]]