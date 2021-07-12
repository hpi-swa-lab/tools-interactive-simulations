as yet unclassified
tick: aUniverse

	aUniverse query: #(#UniverseView) do: [:screenSize |
		aUniverse query: #(#ParticleSettings) do: [:particleSettings | | counter |
			counter := 0.
			aUniverse query: #(#Physics) do: [:physics | counter := counter + 1].

			particleSettings numParticles < counter 
				ifTrue: [aUniverse query: #(#Physics #id) do: [:physics :id | aUniverse remove: id persisted: true.]] 
				ifFalse: [particleSettings numParticles - counter timesRepeat: [ | entity |
					entity := aUniverse spawnNewWith: #(#Transform #Rendered #Physics #Label) do: [:transform :rendered :physics :label |
						transform bounds: ((screenSize size x - 30) atRandom, (screenSize size y - 30) atRandom extent: 25 @ 25).
						label label: 'Particle'.
						rendered
							color: Color black;
							form: (ECSImageAsset of: #'platformer_base' at: 'HUD/hud_p1.png' sized: 25 @ 25).
						physics
							velocity: 200 atRandom - 100, (200 atRandom - 100);
							friction: 0.0]]]]]