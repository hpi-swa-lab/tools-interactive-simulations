as yet unclassified
tick: aUniverse

	| buttonData highlight |
	buttonData := {{#dirtRoad. 96}. {#woodCutter. 126}. {#tree. 127}. {#market. 153}}.
	highlight := (ECSImageAsset of: #anno at: 'tools/', 85, '.png' sized: 53, 50).

	aUniverse query: #(UniverseView) filter: [:view | view isCurrent] do: [:view |
		aUniverse query: #(AnnoState) do: [:state | | buttons y buttonPressed |
			buttons := aUniverse queryList: #(id AnnoMenuButton Rendered).
			buttons ifEmpty: [
				buttonData withIndexDo: [:each :index | 
					aUniverse spawnNewWith: #(AnnoMenuButton Rendered) do: [:button :rendered | 
						button index: index.
						rendered form: (ECSImageAsset of: #anno at: 'tools/', each second, '.png' sized: 53, 50)]]].
			
			view rightJustUp ifTrue: [self removeBuildingFromHand: state universe: aUniverse].
			
			buttonPressed := view leftJustUp.
			y := view size y - 60.
			buttons do: [:each | | id button rendered position data isHovered |
				id := each first.
				button := each second.
				rendered := each third.
				data := buttonData at: button index.
				
				position := ((button index - 1) * 60 + 10)@y.
				isHovered := ((position extent: 50@50) containsPoint: view mousePosition).
				aUniverse canvas drawImage: rendered form object at: position.
				(isHovered or: [data first = state buildingOnHand]) ifTrue: [aUniverse canvas translucentImage: highlight object at: position].
				(isHovered and: [buttonPressed]) ifTrue: [self addBuilding: data toHand: state universe: aUniverse]]]]