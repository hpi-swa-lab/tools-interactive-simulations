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
		aUniverse spawnNewWith: #(AnnoCamera ScreenSize Mouse DeltaTime AnnoState) 
			do: [:annoCamera :screenSize :mouse :deltaTime :annoState |
			annoCamera 
				position: 0, 0;
				justMoved: true.
			screenSize size: 0, 0.
			deltaTime milliseconds: 0; 
				last: Time millisecondClockValue; 
				elapsed: 0.
			mouse 
				position: 0 , 0; leftJustDown: false; leftJustUp: false; 
				leftDown: false; wheelDelta: 0,0.
			annoState
				buttonsCreated: false;
				buildingOnHand: #none;
				money: 1000;
				tools: 0;
				wood: 0;
				stone: 0]]