as yet unclassified
initialize

super initialize.
self
stepTime: 0;
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
spawnNewWith: {OnebitConfig. DeltaTime. OnebitGameState. ScreenSize} do: [:onebitConfig :deltaTime :onebitGameState :screenSize | 
	onebitConfig scale: 2; tileSize: 16; mapSize: 300 , 300.
	deltaTime milliseconds: 22; last: 3737293847648; fpsAccumulated: 0; fpsAverage: 43.956043956043956; numAccumulated: 0; elapsed: 782308.
	onebitGameState state: #init.
	screenSize size: 1693 , 1241];

	addTemplate: (ECSTemplate new
name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new);  addComponent: (OnebitMoving new velocity: 0 , 0);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (31 , 3 corner: 47 , 19)));  addComponent: (OnebitEnemyMinion new));
yourself