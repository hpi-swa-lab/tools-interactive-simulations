as yet unclassified
tick: aUniverse

	| building forms size |
	aUniverse query: #(AnnoState) do: [:state |
		aUniverse query: #(id AnnoTile) do: [:id :tile |
			tile isPreview ifTrue: [aUniverse remove: id]].
	
		state buildingOnHand = #none ifTrue: [^ self].

		building := AnnoHelpers buildings at: state buildingOnHand.
		size := building first.
		forms := building second.
		0 to: size x - 1 do: [:x | 0 to: size y - 1 do: [:y | | form asset |
			asset := forms at: x + (y * size x) + 1.
			form := asset object.
			"form := form adjustBrightness: 0.2." "This is super-slow"
			form := form blendColor: (Color r: 1 g: 1 b: 0 alpha: 0.4).
			
			aUniverse spawnNewWith: #(AnnoTile Rendered) do: [:tile :rendered |
				tile 
					position: x,y;
					chunkPos: 0,0;
					isPreview: true;
					buildingPos: x,y.
				rendered form: (asset copy object: form)]]]]