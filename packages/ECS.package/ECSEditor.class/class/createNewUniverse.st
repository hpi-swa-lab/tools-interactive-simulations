instance creation
createNewUniverse

	^ self openFor: (Universe new
		register: (Pipeline new
			title: 'Game Loop';
			runContinuously: true;
			register: TimeSystem new);
		spawnNewWith: #(DeltaTime ScreenSize Mouse) do: [:time :size :mouse |
			time milliseconds: 0; last: Time millisecondClockValue; elapsed: 0.
			size size: 0 , 0.
			mouse position: 0 , 0; leftJustUp: false; leftJustDown: false; leftDown: false];
		yourself)