as yet unclassified
initialize

super initialize.
self
stepTime: 112;
saveFilter: [:u | u query: {#id. DeltaTime}];
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
	register: OnebitSpawnSystem new;
	register: OnebitEnemySystem new;
	register: OnebitRenderSystem new);
register: (Pipeline new
	title: 'Generation';
	runContinuously: false;
	register: OnebitGeneratorSystem new);
spawnNewWith: {OnebitConfig. ScreenSize. OnebitGameState. DeltaTime} do: [:onebitConfig :screenSize :onebitGameState :deltaTime | 
	onebitConfig scale: 2; tileSize: 16; mapSize: 300 , 300.
	screenSize size: 1230 , 1241.
	onebitGameState state: #init.
	deltaTime milliseconds: 127; last: 3737285724579; fpsAccumulated: 1785; fpsAverage: 7.207207207207207; numAccumulated: 14; elapsed: 394748];

	addTemplate: (ECSTemplate new
name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new x: 0;  storage: nil;  id: nil;  y: 0));
yourself