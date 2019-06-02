as yet unclassified
tick: aUniverse

	aUniverse query: {Burning. Transform} do: [:burning :burningTransform |
		aUniverse query: {OnebitFlammable. Transform. #id} do: [:flammable :flammableTransform :flammableEntity |
			burningTransform bounds origin = flammableTransform bounds origin ifTrue: [
				aUniverse remove: flammableEntity]]].
	
	aUniverse query: {OnebitMoving. Transform} do: [:moving :transform |
		transform bounds += moving velocity]