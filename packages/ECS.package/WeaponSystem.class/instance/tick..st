as yet unclassified
tick: aUniverse

	aUniverse query: #(DeltaTime) do: [:deltaTime |
		aUniverse query: #(Transform Weapon PlayerInput Physics optional #id) do: [:transform :weapon :inputMap :physics :id |
			deltaTime elapsed - weapon lastShotTime > weapon cooldown ifTrue: [
				aUniverse query: #(KeyEvent) do: [:keyEvent |
					keyEvent key = inputMap shoot ifTrue: [
						weapon lastShotTime: deltaTime elapsed.
						self
							spawnProjectileAt: transform bounds center
							in: aUniverse
							by: id
							to: (physics ifNotNil: #velocity ifNil: [100 , 0])]]]]]