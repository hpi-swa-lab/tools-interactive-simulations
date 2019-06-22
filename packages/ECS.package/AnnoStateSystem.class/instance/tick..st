as yet unclassified
tick: aUniverse

	"aUniverse query: #(id AnnoState) do: [:id :state | aUniverse remove: id]."
	(aUniverse queryList: #(AnnoState)) ifEmpty: [
		aUniverse query: #(id AnnoTile) do: [:id :annoTile |
			aUniverse remove: id].
		aUniverse query: #(id #AnnoChunk) do: [:id :annoChunk |
			aUniverse remove: id].
		aUniverse query: #(id #AnnoMenuButton) do: [:id :button |
			aUniverse remove: id].
		aUniverse spawnNewWith: #(DeltaTime AnnoState)
			do: [:deltaTime :annoState |
			deltaTime milliseconds: 0; 
				last: Time millisecondClockValue; 
				elapsed: 0.
			annoState
				buttonsCreated: false;
				buildingOnHand: #none;
				money: 1000;
				tools: 0;
				wood: 0;
				stone: 0]]