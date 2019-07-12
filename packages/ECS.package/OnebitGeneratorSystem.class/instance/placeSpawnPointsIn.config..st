as yet unclassified
placeSpawnPointsIn: aWorld config: aConfig
	
	| r |
	
	(r := 5).
	(0
		to: ((Float pi) * 2)
		by: 1.0
		do: [ :index |
			| indexLimiT |
			
			(aWorld
				spawnNewWith: #( #'OnebitPosition' #'Rendered' #'OnebitSpawnPoint' )
				do: [ :position :rendered :spawnPoint |
					(position x: ((((index sin) * r) rounded) + r) y: ((((index cos) * r) rounded) + r)).
					(rendered
						color: (Color red);
						form: nil).
					(spawnPoint
						frequency: 30;
						timeout: 0) ]) ])