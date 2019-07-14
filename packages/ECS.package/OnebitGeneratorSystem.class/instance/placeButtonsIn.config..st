as yet unclassified
placeButtonsIn: aUniverse config: config
	
	| buttonSize |
	
	buttonSize := config tileSize * 4.
	aUniverse
		spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
		do: [ :terrain :button |
			button
				bounds: (0 , 0 square: buttonSize);
				visible: false.
			terrain
				type: #'Hole';
				form: DigButtonAsset].
	aUniverse
		spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
		do: [ :terrain :button |
			button
				bounds: (buttonSize , 0 square: buttonSize);
				visible: true.
			terrain
				form: TreeButtonAsset;
				type: #'Tree'].
	aUniverse
		spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
		do: [ :terrain :button |
			button
				bounds: (buttonSize * 2 , 0 square: buttonSize);
				visible: true.
			terrain
				type: #'Boulder';
				form: BoulderButtonAsset].
	aUniverse
		spawnNewWith: #( #'OnebitTerrainButton' #'OnebitButton' )
		do: [ :terrain :button |
			button
				bounds: (buttonSize * 3 , 0 square: buttonSize);
				visible: true.
			terrain
				type: #'Sentry';
				form: TowerButtonAsset]