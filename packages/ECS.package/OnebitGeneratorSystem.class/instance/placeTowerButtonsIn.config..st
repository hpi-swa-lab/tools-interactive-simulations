as yet unclassified
placeTowerButtonsIn: aUniverse config: aConfig
	
	| buttonSize buttons y x |
	
	buttons := { { 'Fire Projectiles' . 10 , 0 . 100 . #'OnebitFireProjectile' } . { 
				'Water Projectiles' . 2 , 0 . 60 . #'OnebitWaterProjectile' } . { 'Exploding Projectiles' . 5
					, 0 . 200 . #'OnebitExplosionProjectile' } . { 'Ice Projectiles' . 6 , 0 . 120 . 
					#'OnebitIceProjectile' } . { 'Oil Projectiles' . 6 , 5 . 70 . #'OnebitOilProjectile' } }.
		buttonSize := 300 , (aConfig tileSize * 2).
		y := 87.
		x := 0.
		buttons
			do: [ :buttonDef |
				aUniverse
					spawnNewWith: #( #'OnebitButton' #'OnebitUpgradeButton' )
					do: [ :button :upgradeButton |
						button
							bounds: (x , y extent: buttonSize);
							visible: false.
						upgradeButton
							icon: (ECSTileMapAsset
									of: #'onebit'
									at: (buttonDef second square: aConfig tileSize)
									scale: 2);
							label: buttonDef first;
							cost: buttonDef third;
							projectileType: buttonDef fourth.
						y := y + buttonSize y]]