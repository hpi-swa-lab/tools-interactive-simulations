as yet unclassified
tick: aUniverse

	| moneyIcon woodIcon stoneIcon toolsIcon |
	aUniverse query: #(UniverseView) do: [:view | view isCurrent ifTrue: [
		moneyIcon :=  ECSImageAsset of: #anno at: 'tools/', 46, '.png' sized: 30, 30.
		toolsIcon :=  ECSImageAsset of: #anno at: 'tools/', 48, '.png' sized: 30, 30.
		woodIcon :=  ECSImageAsset of: #anno at: 'tools/', 49, '.png' sized: 30, 30.
		stoneIcon :=  ECSImageAsset of: #anno at: 'tools/', 47, '.png' sized: 30, 30.
		aUniverse query: #(AnnoState) do: [:state |
			self draw: state money icon: moneyIcon on: aUniverse canvas at: 0.
			self draw: state wood icon: toolsIcon on: aUniverse canvas at: 120.
			self draw: state wood icon: woodIcon on: aUniverse canvas at: 240.
			self draw: state wood icon: stoneIcon on: aUniverse canvas at: 360.]]]