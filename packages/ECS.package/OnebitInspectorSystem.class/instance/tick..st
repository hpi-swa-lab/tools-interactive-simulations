as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitConfig. Mouse} do: [:config :mouse |
		mouse leftJustUp ifTrue: [
			aUniverse query: {OnebitPosition. #id} do: [:position :id |
				((position x @ position y * 64 extent: config tileSize * config scale) containsPoint: mouse position)
					ifTrue: [ECSEntityComponentFilter openForId: id universe: aUniverse]]]]