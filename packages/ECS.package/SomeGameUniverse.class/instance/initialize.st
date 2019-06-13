as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Main';
		runContinuously: true;
		register: SomeGameInputSystem new;
		register: SomeGameRenderSystem new);
	register: (Pipeline new
		title: 'Editing';
		runContinuously: true;
		register: InspectorSystem new;
		register: SGTransformRenderSystem new);
	spawnNewWith: #(Transform Rendered) do: [:transform :rendered | 
		transform bounds: (35 , 24 corner: 55 , 44).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'adler.png')];
	spawnNewWith: #(ScreenSize Mouse DeltaTime) do: [:screenSize :mouse :deltaTime | 
		screenSize size: 875 , 774.
		mouse position: 393 , 764; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; middleDown: false; middleJustDown: false; middleJustUp: false; positionDelta: 0 , 0.
		deltaTime milliseconds: 0; last: 3737887932887; fpsAccumulated: 0; fpsAverage: 0; numAccumulated: 0; elapsed: 0];
	yourself