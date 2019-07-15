as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'UniverseView' )
		do: [ :view |
			aUniverse
				query: #( #'OnebitGameState' #'OnebitConfig' )
				do: [ :gameState :config |
					| down x y |
					
					down := view leftJustDown.
					x := (view mousePosition) x.
					y := (view mousePosition) y.
					aUniverse canvas
						fillRectangle: (0 , ((view size) y - 10)
							extent: (gameState score / (config maxScore) asFloat * (view size) x) rounded , 
							10)
						color: Color red.
					self drawCoinsIn: aUniverse state: gameState config: config view: view.
					aUniverse
						query: #( #'OnebitButton' )
						filter: [ :button |button visible]
						do: [ :button |
							aUniverse canvas
								fillRectangle: button bounds
								color: (button hovered
									ifFalse: [config worldBackgroundColor]
									ifTrue: [Color lightGray])].
					(gameState selectedTower) alive
						ifTrue: [
							aUniverse
								query: #( #'OnebitButton' #'OnebitUpgradeButton' )
								do: [ :button :upgradeButton |
									| coinOffset font coinString |
									
									coinString := (upgradeButton cost) asString.
									font := TextStyle defaultFont.
									coinOffset := 20.
									upgradeButton icon
										drawOn: aUniverse canvas
										at: (button bounds) origin.
									aUniverse canvas
										drawString: upgradeButton label
										at: (button bounds) origin + (config tileSize * 2 + 8 @ 0)
										font: nil
										color: Color white.
									(ECSTileMapAsset of: #'onebit' at: (9 , 25 square: config tileSize))
										drawOn: aUniverse canvas
										at: (button bounds) topRight - (coinOffset , 0).
									aUniverse canvas
										drawString: coinString
										at: (button bounds) topRight
											- (coinOffset + (font widthOfString: coinString) , 0)
											font: nil
											color: Color white]].
						aUniverse
							query: #( #'OnebitButton' #'OnebitTerrainButton' )
							do: [ :button :terrainButton |
								aUniverse canvas
									fillRectangle: button bounds
									color: (gameState selectedPlace = terrainButton type
										ifTrue: [Color white]).
								terrainButton form
									drawOn: aUniverse canvas
									at: (button bounds) origin
									blend: Color white]]]