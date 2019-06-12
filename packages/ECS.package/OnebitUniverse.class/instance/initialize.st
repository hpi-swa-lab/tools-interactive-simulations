as yet unclassified
initialize

super initialize.
self
stepTime: 166;
saveFilter: [:u | 
(u getSingle: OnebitGameState of: 1)
		state: #unset.
	u query: {#id. DeltaTime}];
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
	register: OnebitDamageSystem new;
	register: OnebitWaterFlowSystem new);
spawnNewWith: {OnebitConfig. DeltaTime. Rendered. Mouse. ScreenSize. OnebitGameState. OnebitPosition} do: [:onebitConfig :deltaTime :rendered :mouse :screenSize :onebitGameState :onebitPosition | 
	onebitConfig scale: 2; tileSize: 16; mapSize: 30 , 30; turnTime: 500.
	deltaTime milliseconds: 170; last: 3737781464067; fpsAccumulated: 1389; fpsAverage: 5.913660555884093; numAccumulated: 8; elapsed: 7827517.
	rendered color: (ECSColor rgba: 16rFFA4FAFF); form: nil.
	mouse position: 533 , 425; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; middleDown: false; middleJustDown: false; middleJustUp: false.
	screenSize size: 610 , 610.
	onebitGameState state: #unset; movingTimeout: 500.
	onebitPosition x: 29; y: 29];

	addTemplate: (ECSTemplate new
name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new);  addComponent: (OnebitMoving new velocity: 0 , 0);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (29 , 2 corner: 45 , 18) scale: 2 rotation: 0));  addComponent: (OnebitEnemyMinion new);  addComponent: (Health new max: 100;  current: 100));

	addTemplate: (ECSTemplate new
name: 'Player'; addComponent: (OnebitPosition new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (24 , 4 corner: 40 , 20) scale: 2 rotation: 0));  addComponent: (Health new max: 1682;  current: 1471);  addComponent: (PlayerInput new acceleration: 1;  left: $A;  right: $D;  up: $W;  down: $S;  shoot: Character space);  addComponent: (Label new label: (Text string: 'player' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (OnebitCameraFocus new));

	addTemplate: (ECSTemplate new
name: 'Sentry'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (3 , 19 corner: 19 , 35) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitTower new projectileDamage: 39;  reach: 11));

	addTemplate: (ECSTemplate new
name: 'TowerProjectile'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (14 , 18 corner: 30 , 34) scale: 2 rotation: 0));  addComponent: (OnebitProjectile new sourcePosition: 0 , 0;  targetPosition: 0 , 0;  damage: 75);  addComponent: (OnebitPosition new));

	addTemplate: (ECSTemplate new
name: 'Base'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (6 , 19 corner: 22 , 35) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitBase new damageTaken: 0));
yourself