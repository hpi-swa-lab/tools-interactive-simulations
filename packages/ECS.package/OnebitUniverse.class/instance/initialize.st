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
spawnNewWith: {OnebitConfig. ScreenSize. OnebitGameState. DeltaTime} do: [:onebitConfig :screenSize :onebitGameState :deltaTime | 
	onebitConfig scale: 2; tileSize: 16; mapSize: 300 , 300.
	screenSize size: 513 , 614.
	onebitGameState state: #init.
	deltaTime milliseconds: 21; last: 3737425012776; fpsAccumulated: 66; fpsAverage: 46.403712296983755; numAccumulated: 3; elapsed: 929076];

	addTemplate: (ECSTemplate new
name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new);  addComponent: (OnebitMoving new velocity: 0 , 0);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (29 , 2 corner: 45 , 18) scale: 2 rotation: 0));  addComponent: (OnebitEnemyMinion new));

	addTemplate: (ECSTemplate new
name: 'Player'; addComponent: (OnebitPosition new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (24 , 4 corner: 40 , 20) scale: 2 rotation: 0));  addComponent: (Health new max: 123;  current: 123);  addComponent: (PlayerInput new acceleration: 1;  left: $A;  right: $D;  up: $W;  down: $S;  shoot: Character space);  addComponent: (Label new label: (Text string: 'player' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (OnebitCameraFocus new));
yourself