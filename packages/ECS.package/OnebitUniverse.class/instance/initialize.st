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
	register: OnebitExpiringSystem new;
	register: OnebitSpawnSystem new;
	register: OnebitRenderSystem new;
	register: OnebitParticleSystem new;
	register: AnnoFrameCounterSystem new);
register: (Pipeline new
	title: 'Generation';
	runContinuously: false;
	register: OnebitGeneratorSystem new);
register: (Pipeline new
	title: 'GameTick';
	runContinuously: false;
	register: OnebitBurningSystem new;
	register: OnebitEnemySystem new;
	register: OnebitMovingSystem new);
spawnNewWith: {OnebitConfig. DeltaTime. OnebitGameState. ScreenSize} do: [:onebitConfig :deltaTime :onebitGameState :screenSize | 
	onebitConfig scale: 2; tileSize: 16; mapSize: 300 , 300.
	deltaTime milliseconds: 21; last: 3737431568558; fpsAccumulated: 43; fpsAverage: 45.04504504504504; numAccumulated: 2; elapsed: 2115878.
	onebitGameState state: #init; movingTimeout: 233.
	screenSize size: 896 , 762];

	addTemplate: (ECSTemplate new
name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new);  addComponent: (OnebitMoving new velocity: 0 , 0);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (29 , 2 corner: 45 , 18) scale: 2 rotation: 0));  addComponent: (OnebitEnemyMinion new);  addComponent: (Health new max: 100;  current: 100));

	addTemplate: (ECSTemplate new
name: 'Player'; addComponent: (OnebitPosition new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (24 , 4 corner: 40 , 20) scale: 2 rotation: 0));  addComponent: (Health new max: 123;  current: 123);  addComponent: (PlayerInput new acceleration: 1;  left: $A;  right: $D;  up: $W;  down: $S;  shoot: Character space);  addComponent: (Label new label: (Text string: 'player' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (OnebitCameraFocus new));
yourself