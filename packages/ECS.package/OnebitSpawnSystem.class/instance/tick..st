as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitConfig DeltaTime) do: [:config :deltaTime |
		aUniverse query: #(OnebitSpawnPoint OnebitPosition) do: [:spawnPoint :spawnPosition |
			spawnPoint timeout: spawnPoint timeout - deltaTime milliseconds.
			spawnPoint timeout <= 0 ifTrue: [ | enemy |
				spawnPoint timeout: spawnPoint frequency.
				enemy := aUniverse instanceTemplate: #Enemy.
				(aUniverse get: #(OnebitPosition) of: enemy) first x: spawnPosition x y: spawnPosition y]]]