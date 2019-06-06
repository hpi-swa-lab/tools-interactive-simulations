as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitConfig. DeltaTime} do: [:config :deltaTime |
		aUniverse query: {OnebitSpawnPoint. Transform} do: [:spawnPoint :spawnTransform |
			spawnPoint timeout: spawnPoint timeout - deltaTime milliseconds.
			spawnPoint timeout <= 0 ifTrue: [
				spawnPoint timeout: spawnPoint frequency.
				aUniverse
					spawnNewWith: {OnebitEnemyMinion. Rendered. Transform. OnebitFlammable. Health. OnebitMoving}
					do: [:minion :rendered :transform :flammable :health :moving |
						rendered color: ECSColor black; form: (ECSTileMapAsset of: #onebit at: (26 , 0 square: config tileSize) scale: config scale).
						health current: 100; max: 100.
						transform bounds: (spawnTransform bounds origin copy square: config scale * config tileSize).
						moving velocity: 0 , 0]]]]