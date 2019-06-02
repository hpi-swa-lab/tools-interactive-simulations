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
spawnNewWith: {DeltaTime. OnebitConfig. ScreenSize} do: [:deltaTime :onebitConfig :screenSize | 
	deltaTime milliseconds: 132; last: 3736950685919; fpsAccumulated: 1508; fpsAverage: 7.830853563038371; numAccumulated: 12; elapsed: 289167.
	onebitConfig scale: 2; tileSize: 16; mapSize: 300 , 300.
	screenSize size: 1099 , 762];
spawnNewWith: {KeyEvent} do: [:keyEvent | 
	keyEvent key: $Û];
yourself