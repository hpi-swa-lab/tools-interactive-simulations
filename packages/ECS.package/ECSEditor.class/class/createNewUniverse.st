as yet unclassified
createNewUniverse

	^ self openFor: (Universe new
		register: (Pipeline new
			title: 'Game Loop';
			runContinuously: true;
			register: TimeSystem new);
		spawnNewWith: #(DeltaTime UniverseView) do: [:time :view |
			time initialize; last: Time millisecondClockValue.
			view initialize];
		yourself)