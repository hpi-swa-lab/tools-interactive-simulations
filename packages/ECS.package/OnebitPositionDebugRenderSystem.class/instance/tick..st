as yet unclassified
tick: aUniverse
	
	(OnebitHelper
		in: aUniverse
		withCameraTransformOn: (aUniverse canvas)
		draw: [ :canvas :config :tileSize :area |
			((aUniverse storageOf: #'OnebitPosition')
				in: aUniverse
				area: area
				query: #( #'OnebitDebugPosition' #'OnebitPosition' )
				do: [ :rendered :position | (canvas fillOval: ((position * tileSize) extent: tileSize) color: (Color eggplant)) ]).
			(aUniverse
				query: #( #'OnebitEnemyMinion' )
				do: [ :enemy |
					((enemy nextSteps)
						ifNotNil: [ :s |
							(s
								do: [ :position |
									(canvas fillOval: (((position * tileSize) extent: tileSize) insetBy: 8) color: ((Color aqua) alpha: 0.3)) ]) ]) ]).
			((aUniverse storageOf: #'OnebitPosition')
				in: aUniverse
				area: area
				query: #( #'OnebitBlockMovement' #'OnebitPosition' )
				do: [ :block :position |
					(canvas drawString: ((block cost) asString) at: (position * tileSize) font: nil color: (Color white)) ]) ])