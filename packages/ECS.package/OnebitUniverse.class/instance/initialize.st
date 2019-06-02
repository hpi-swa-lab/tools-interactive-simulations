as yet unclassified
initialize

^ Universe new
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: OnebitRenderSystem new;
	register: OnebitPlayerInputSystem new;
	register: OnebitFireSystem new);
register: (Pipeline new
	title: 'Generation';
	runContinuously: false;
	register: OnebitGeneratorSystem new);
spawnNewWith: {ScreenSize. DeltaTime} do: [:screenSize :deltaTime | 
	screenSize size: 2646 , 1526.
	deltaTime milliseconds: 21; last: 3736880890555; fpsAccumulated: 323; fpsAverage: 47.16981132075472; numAccumulated: 15; elapsed: 76073];
yourself