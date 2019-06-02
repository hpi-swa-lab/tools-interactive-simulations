as yet unclassified
initialize

^ Universe new

stepTime: 112;
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: TimeSystem new;
	register: OnebitRenderSystem new;
	register: OnebitPlayerInputSystem new;
	register: OnebitFireSystem new;
	register: OnebitBurningSystem new;
	register: OnebitExpiringSystem new;
	register: OnebitMovingSystem new);
register: (Pipeline new
	title: 'Generation';
	runContinuously: false;
	register: OnebitGeneratorSystem new);
spawnNewWith: {DeltaTime. ScreenSize} do: [:deltaTime :screenSize | 
	deltaTime milliseconds: 128; last: 3736923992064; fpsAccumulated: 878; fpsAverage: 7.898894154818326; numAccumulated: 7; elapsed: 92577.
	screenSize size: 689 , 614];
spawnNewWith: {KeyEvent} do: [:keyEvent | 
	keyEvent key: $Û];
yourself