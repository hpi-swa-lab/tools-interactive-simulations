as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	saveFilter: [:u | 
	(u getSingle: #OnebitGameState of: 1)
			state: #unset.
		u query: {#id. #DeltaTime}];
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
		register: OnebitUIRenderSystem new;
		register: OnebitProjectileSystem new;
		register: OnebitParticleSystem new;
		register: AnnoFrameCounterSystem new;
		register: OnebitEnvironmentPlacerSystem new);
	register: (Pipeline new
		title: 'Generation';
		runContinuously: false;
		register: OnebitResetSystem new;
		register: OnebitGeneratorSystem new);
	register: (Pipeline new
		title: 'GameTick';
		runContinuously: false;
		register: OnebitApplyProjectileDamageSystem new;
		register: OnebitBurningSystem new;
		register: OnebitEnemySystem new;
		register: OnebitDamageSystem new;
		register: OnebitMovingSystem new;
		register: TowerSystem new;
		register: OnebitWaterFlowSystem new);
	spawnNewWith: #(Mouse Rendered OnebitGameState OnebitPosition DeltaTime ScreenSize OnebitConfig) do: [:mouse :rendered :onebitGameState :onebitPosition :deltaTime :screenSize :onebitConfig | 
		mouse position: 251 , 731; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; middleDown: false; middleJustDown: false; middleJustUp: false; positionDelta: 3 , 4.
		rendered color: (ECSColor rgba: 16rFFA4FAFF); form: nil.
		onebitGameState state: #unset; movingTimeout: 500; selectedPlace: #Sentry.
		onebitPosition x: 12; y: 15.
		deltaTime milliseconds: 22; last: 3737909427706; fpsAccumulated: 293; fpsAverage: 43.10344827586207; numAccumulated: 14; elapsed: 11482697.
		screenSize size: 330 , 732.
		onebitConfig scale: 2; tileSize: 16; mapSize: 30 , 30; turnTime: 500; worldBackgroundColor: (Color r: 0.279 g: 0.177 b: 0.236)];
	
		addTemplate: (ECSTemplate new
	name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new);  addComponent: (OnebitMoving new velocity: 0 , 0);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (29 , 2 corner: 45 , 18) scale: 2 rotation: 0));  addComponent: (OnebitEnemyMinion new);  addComponent: (Health new max: 100;  current: 100);  addComponent: (OnebitBlockMovement new));
	
		addTemplate: (ECSTemplate new
	name: 'Player'; addComponent: (OnebitPosition new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (24 , 4 corner: 40 , 20) scale: 2 rotation: 0));  addComponent: (Health new max: 3615;  current: 3541);  addComponent: (PlayerInput new acceleration: 1;  left: $A;  right: $D;  up: $W;  down: $S;  shoot: Character space);  addComponent: (Label new label: (Text string: 'player' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (OnebitCameraFocus new));
	
		addTemplate: (ECSTemplate new
	name: 'Sentry'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (3 , 19 corner: 19 , 35) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitTower new projectileDamage: 39;  reach: 11);  addComponent: (OnebitBlockMovement new);  addComponent: (OnebitBlocksPlacement new));
	
		addTemplate: (ECSTemplate new
	name: 'TowerProjectile'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (14 , 18 corner: 30 , 34) scale: 2 rotation: 0));  addComponent: (OnebitProjectile new sourcePosition: 0 , 0;  targetPosition: 0 , 0;  damage: 75);  addComponent: (OnebitPosition new));
	
		addTemplate: (ECSTemplate new
	name: 'Base'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (6 , 19 corner: 22 , 35) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitBase new damageTaken: 0));
	
		addTemplate: (ECSTemplate new
	name: 'Boulder'; addComponent: (OnebitBlockMovement new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (4 , 0 corner: 20 , 16) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitBlocksPlacement new));
	
		addTemplate: (ECSTemplate new
	name: 'TerrainButton'; addComponent: (OnebitTerrainButton new form: (ECSTileMapAsset of: #onebit at: (23 , 23 corner: 39 , 39) scale: 2 rotation: 0)));
	
		addTemplate: (ECSTemplate new
	name: 'Hole'; addComponent: (OnebitBlocksPlacement new);  addComponent: (OnebitHole new);  addComponent: (OnebitPosition new));
	
		addTemplate: (ECSTemplate new
	name: 'Tree'; addComponent: (OnebitBlocksPlacement new);  addComponent: (OnebitFlammable new);  addComponent: (Health new max: 100;  current: 100);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (3 , 1 corner: 19 , 17) scale: 2 rotation: 0));  addComponent: (OnebitPosition new));
	yourself