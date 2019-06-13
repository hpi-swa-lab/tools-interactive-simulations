as yet unclassified
initialize

super initialize.
self
stepTime: 0;
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: TimeSystem new;
	register: AnnoCameraSystem new;
	register: AnnoDynamicWorldGeneratorSystem new;
	register: AnnoRenderSystem new;
	register: AnnoRulerSystem new;
	register: AnnoFrameCounterSystem new);
register: (Pipeline new
	title: 'World Generation';
	runContinuously: false;
	register: AnnoResetWorldSystem new);
register: (Pipeline new
	title: 'Minimap';
	runContinuously: false;
	register: AnnoNoiseTestSystem new);
	spawnNewWith: #(Mouse AnnoCamera ScreenSize DeltaTime) do: [:mouse :annoCamera :screenSize :deltaTime | 
		mouse position: 179 , 372; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; middleDown: false; middleJustDown: false; middleJustUp: false.
		annoCamera position: 0 , 0.
		screenSize size: 208 , 374.
		deltaTime milliseconds: 0; last: 3737860236360; fpsAccumulated: 807; fpsAverage: 21.78649237472767; numAccumulated: 17; elapsed: 0];
yourself