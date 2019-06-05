as yet unclassified
initialize

^ Universe new

stepTime: 112;
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: TimeSystem new;
	register: OnebitStateSystem new;
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
spawnNewWith: {OnebitConfig. ScreenSize. DeltaTime. OnebitGameState} do: [:onebitConfig :screenSize :deltaTime :gameState |
	onebitConfig scale: 2; tileSize: 16; mapSize: 300 , 300.
	screenSize size: 1389 , 1241.
	deltaTime milliseconds: 133; last: 3737178252902; fpsAccumulated: 1411; fpsAverage: 7.923930269413629; numAccumulated: 11; elapsed: 311971.
	gameState state: #unset];
spawnNewWith: {KeyEvent} do: [:keyEvent | 
	keyEvent key: $Û];
yourself