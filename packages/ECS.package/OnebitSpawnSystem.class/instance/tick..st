as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitConfig. DeltaTime} do: [:config :deltaTime |
		aUniverse query: {OnebitSpawnPoint. OnebitPosition} do: [:spawnPoint :spawnPosition |
			spawnPoint timeout: spawnPoint timeout - deltaTime milliseconds.
			spawnPoint timeout <= 0 ifTrue: [
				spawnPoint timeout: spawnPoint frequency.
				aUniverse
					spawnNewWith: {OnebitEnemyMinion. Rendered. OnebitPosition. OnebitFlammable. Health. OnebitMoving}
					do: [:minion :rendered :position :flammable :health :moving |
						rendered color: ECSColor black; form: (ECSTileMapAsset of: #onebit at: (26 , 0 square: config tileSize) scale: config scale).
						health current: 100; max: 100.
						position x: spawnPosition x y: spawnPosition y.
						moving velocity: 0 , 0]]]]