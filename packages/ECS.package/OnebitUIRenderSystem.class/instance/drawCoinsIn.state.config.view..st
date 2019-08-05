as yet unclassified
drawCoinsIn: aUniverse state: gameState config: config view: aView
	
	| coinsString font |
	
	(font := (TextStyle defaultFont)).
	(coinsString := ((gameState coins) asString)).
	((ECSTileMapAsset of: #'onebit' at: ((9 , 25) square: (config tileSize)) scale: 2)
		drawOn: (aUniverse canvas)
		at: ((((aView size) x) - ((config tileSize) * 2)) , 0)).
	((aUniverse canvas)
		drawString: coinsString
		at: (((((aView size) x) - ((config tileSize) * 2)) - (font widthOfString: coinsString)) , ((font height) / 2))
		font: nil
		color: (Color white))