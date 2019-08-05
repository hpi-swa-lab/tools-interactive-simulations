as yet unclassified
tick: aUniverse

	| buttonData |
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
				stone: 0]].

	aUniverse query: #(AnnoState) do: [:state |
		aUniverse query: #(UniverseView) do: [:view |
			view rightJustUp ifTrue: [
				state buildingOnHand: #none.
				aUniverse onceRunPipelineNamed: 'BuildingPreview']]].
	
	buttonData := {{#dirtRoad. 96}. {#woodCutter. 126}. {#tree. 127}. {#market. 153}}.
	
	aUniverse query: #(UniverseView AnnoCamera) do: [:view :camera |
		aUniverse query: #(AnnoState) do: [:state | | buttons y buttonPressed |
			buttons := aUniverse queryList: #(id AnnoMenuButton Rendered).
			
			buttonPressed := view leftJustUp.
			y := view size y - 60.
			buttons do: [:each | | id button rendered position data isHovered |
				id := each first.
				button := each second.
				rendered := each third.
				data := buttonData at: button index.
				
				position := ((button index - 1) * 60 + 10)@y.
				isHovered := ((position extent: 50@50) containsPoint: view mousePosition).
				(isHovered and: [buttonPressed]) ifTrue: [
					state buildingOnHand: data first.
					aUniverse onceRunPipelineNamed: 'BuildingPreview']]]]