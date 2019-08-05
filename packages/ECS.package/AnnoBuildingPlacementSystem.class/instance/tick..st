as yet unclassified
tick: aUniverse
	aUniverse query: #(AnnoCamera UniverseView) " filter: [:c :view | view isCurrent]" do: [:camera :view  |
		aUniverse query: #(AnnoState) do: [:state | | building |
			building := AnnoHelpers buildings at: state buildingOnHand.
			building ifNotNil: [ | pos forms size wasBuilt |
				size := building first.
				forms := building second.
				pos := AnnoHelpers pixelToMapPosition: view mousePosition - camera position.
				wasBuilt := false.
				aUniverse query: #(AnnoTile Rendered) do: [:tile :rendered |
					tile isPreview ifTrue: [
						tile position: tile buildingPos + pos.
						view leftJustUp ifTrue: [ | asset |
							wasBuilt := true.
							tile
								isPreview: false;
								isBuiltByPlayer: true.
							asset := forms at: tile buildingPos x + (tile buildingPos y * size x) + 1.
							rendered form: asset]]].
				wasBuilt ifTrue: [
					state money: state money - building third.
					aUniverse onceRunPipelineNamed: 'BuildingPreview']]]]