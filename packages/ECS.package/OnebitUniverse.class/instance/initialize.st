as yet unclassified
initialize

^ Universe new

stepTime: 112;
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: TimeSystem new;
	register: OnebitPlayerInputSystem new;
	register: OnebitFireSystem new;
	register: OnebitBurningSystem new;
	register: OnebitExpiringSystem new;
	register: OnebitMovingSystem new;
	register: OnebitRenderSystem new);
register: (Pipeline new
	title: 'Generation';
	runContinuously: false;
	register: OnebitGeneratorSystem new);
spawnNewWith: {DeltaTime. ScreenSize} do: [:deltaTime :screenSize | 
	deltaTime milliseconds: 131; last: 3736936485684; fpsAccumulated: 1136; fpsAverage: 7.964954201513342; numAccumulated: 9; elapsed: 115712.
	screenSize size: 1302 , 762];
spawnNewWith: {KeyEvent} do: [:keyEvent | 
	keyEvent key: $Û];
yourself