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
	register: OnebitProjectileSystem new;
	register: OnebitParticleSystem new;
	register: OnebitWaterFlowSystem new;
	register: AnnoFrameCounterSystem new;
	register: OnebitInspectorSystem new);
register: (Pipeline new
	title: 'Generation';
	runContinuously: false;
	register: OnebitGeneratorSystem new);
register: (Pipeline new
	title: 'GameTick';
	runContinuously: false;
	register: OnebitApplyProjectileDamageSystem new;
	register: OnebitBurningSystem new;
	register: OnebitEnemySystem new;
	register: OnebitMovingSystem new;
	register: TowerSystem new;
	register: OnebitDamageSystem new);
spawnNewWith: {OnebitPosition. OnebitConfig. DeltaTime. Mouse. OnebitGameState. Rendered. ScreenSize} do: [:onebitPosition :onebitConfig :deltaTime :mouse :onebitGameState :rendered :screenSize | 
	onebitPosition x: 0; y: 0.
	onebitConfig scale: 2; tileSize: 16; mapSize: 30 , 30; turnTime: 500.
	deltaTime milliseconds: 21; last: 3737451013137; fpsAccumulated: 315; fpsAverage: 42.3728813559322; numAccumulated: 14; elapsed: 6857076.
	mouse position: 339 , 5; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0.
	onebitGameState state: #unset; movingTimeout: 277.
	rendered color: (ECSColor rgba: 16rFFA4FAFF); form: nil.
	screenSize size: 775 , 762];

	addTemplate: (ECSTemplate new
name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new);  addComponent: (OnebitMoving new velocity: 0 , 0);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (29 , 2 corner: 45 , 18) scale: 2 rotation: 0));  addComponent: (OnebitEnemyMinion new);  addComponent: (Health new max: 100;  current: 100));

	addTemplate: (ECSTemplate new
name: 'Player'; addComponent: (OnebitPosition new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (24 , 4 corner: 40 , 20) scale: 2 rotation: 0));  addComponent: (Health new max: 1682;  current: 1471);  addComponent: (PlayerInput new acceleration: 1;  left: $A;  right: $D;  up: $W;  down: $S;  shoot: Character space);  addComponent: (Label new label: (Text string: 'player' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (OnebitCameraFocus new));

	addTemplate: (ECSTemplate new
name: 'Sentry'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (3 , 19 corner: 19 , 35) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitTower new projectileDamage: 39;  reach: 11));

	addTemplate: (ECSTemplate new
name: 'TowerProjectile'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (14 , 18 corner: 30 , 34) scale: 2 rotation: 0));  addComponent: (OnebitProjectile new sourcePosition: 0 , 0;  targetPosition: 0 , 0;  damage: 75);  addComponent: (OnebitPosition new));
yourself