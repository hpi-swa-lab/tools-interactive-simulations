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
	runContinuously: true;
	register: AnnoNoiseTestSystem new);
spawnNewWith: {AnnoCamera. ScreenSize} do: [:annoCamera :screenSize | 
	annoCamera position: 0 , 0.
	screenSize size: 0 , 0];
spawnNewWith: {Mouse. DeltaTime} do: [:mouse :deltaTime | 
	mouse position: 478 , 762; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0.
	deltaTime milliseconds: 0; last: 3737443727964; fpsAccumulated: 1431; fpsAverage: 10.649627263045792; numAccumulated: 15; elapsed: 0];
yourself