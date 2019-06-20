as yet unclassified
tick: aUniverse

	aUniverse draw: [:c :universe |
		OnebitHelper in: aUniverse withCameraTransformOn: c draw: [:canvas :config :tileSize :area |
			(aUniverse storageOf: #OnebitPosition) in: aUniverse area: area query: #(OnebitDebugPosition OnebitPosition) do: [:rendered :position | 
				canvas fillOval: (position * tileSize extent: tileSize) color: Color purple].
			
			aUniverse query: #(OnebitEnemyMinion) do: [:enemy |
				enemy nextSteps ifNotNil: [:s | s do: [:position | canvas fillOval: (position * tileSize extent: tileSize) color: Color aqua]]]]]