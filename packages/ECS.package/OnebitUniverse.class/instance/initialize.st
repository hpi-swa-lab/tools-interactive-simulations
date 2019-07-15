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
		title: 'Render';
		runContinuously: false;
		register: OnebitRenderSystem new;
		register: OnebitPositionDebugRenderSystem new disable;
		register: (OnebitUIRenderSystem new
		constantAt: #TowerButtonAsset put: (ECSTileMapAsset of: #onebit at: (3 , 19 corner: 19 , 35) scale: 4 rotation: 0);
		constantAt: #DigButtonAsset put: (ECSTileMapAsset of: #onebit at: (10 , 27 corner: 26 , 43) scale: 4 rotation: 0);
		constantAt: #BoulderButtonAsset put: (ECSTileMapAsset of: #onebit at: (4 , 0 corner: 20 , 16) scale: 4 rotation: 0);
		constantAt: #TreeButtonAsset put: (ECSTileMapAsset of: #onebit at: (2 , 1 corner: 18 , 17) scale: 4 rotation: 0));
		register: AnnoFrameCounterSystem new);
	register: (Pipeline new
		title: 'Loop';
		runContinuously: true;
		register: TimeSystem new;
		register: OnebitStateSystem new;
		register: OnebitPlayerInputSystem new;
		register: OnebitFireSystem new;
		register: OnebitExpiringSystem new;
		register: OnebitProjectileSystem new;
		register: OnebitParticleSystem new;
		register: OnebitEnvironmentPlacerSystem new;
		register: OnebitUISystem new);
	register: (Pipeline new
		title: 'Generation';
		runContinuously: false;
		register: OnebitResetSystem new;
		register: (OnebitGeneratorSystem new
		constantAt: #TowerButtonAsset put: (ECSTileMapAsset of: #onebit at: (3 , 19 corner: 19 , 35) scale: 4 rotation: 0);
		constantAt: #BoulderButtonAsset put: (ECSTileMapAsset of: #onebit at: (4 , 0 corner: 20 , 16) scale: 4 rotation: 0);
		constantAt: #DigButtonAsset put: (ECSTileMapAsset of: #onebit at: (10 , 27 corner: 26 , 43) scale: 4 rotation: 0);
		constantAt: #TreeButtonAsset put: (ECSTileMapAsset of: #onebit at: (2 , 1 corner: 18 , 17) scale: 4 rotation: 0)));
	register: (Pipeline new
		title: 'GameTick';
		runContinuously: false;
		register: OnebitSpawnSystem new;
		register: OnebitApplyProjectileDamageSystem new;
		register: OnebitBurningSystem new;
		register: OnebitEnemySystem new;
		register: OnebitFrozenSystem new;
		register: OnebitDamageSystem new;
		register: OnebitMovingSystem new;
		register: TowerSystem new;
		register: OnebitWaterFlowSystem new);
	spawnNewWith: #(OnebitGameState OnebitConfig Rendered OnebitPosition DeltaTime) do: [:onebitGameState :onebitConfig :rendered :onebitPosition :deltaTime | 
		onebitGameState state: #unset; movingTimeout: 431; selectedPlace: #Tree; score: 410; selectedTower: 0; coins: 450; ticksTillSpawn: 8; spawnTimeout: 15; turnCount: 4.
		onebitConfig scale: 2; tileSize: 16; mapSize: 30 , 30; turnTime: 800; worldBackgroundColor: (Color r: 0.279 g: 0.177 b: 0.236); maxScore: 10000; spawnTimeout: 15; placementCost: 30; towerPlacementCost: 100; coinsPerTurn: 10; startingCoins: 100.
		rendered color: (ECSColor rgba: 16r6AA4FAFF); form: nil.
		onebitPosition x: 11; y: 18.
		deltaTime milliseconds: 21; last: 3740630230490; fpsAccumulated: 296; fpsAverage: 45.87155963302752; numAccumulated: 14; elapsed: 27004351];
	
		addTemplate: (ECSTemplate new
	name: 'Enemy'; addComponent: (OnebitFlammable new);  addComponent: (OnebitPosition new);  addComponent: (OnebitMoving new velocity: 0 , 0);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (29 , 2 corner: 45 , 18) scale: 2 rotation: 0));  addComponent: (OnebitEnemyMinion new nextSteps: nil);  addComponent: (Health new max: 1000;  current: 1000);  addComponent: (OnebitBlockMovement new cost: 0;  canDamage: false;  canTraverse: false));
	
		addTemplate: (ECSTemplate new
	name: 'Player'; addComponent: (OnebitPosition new);  addComponent: (PlayerInput new acceleration: 1;  left: $A;  right: $D;  up: $W;  down: $S;  shoot: Character space);  addComponent: (Label new label: (Text string: 'player' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (OnebitCameraFocus new));
	
		addTemplate: (ECSTemplate new
	name: 'Sentry'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (3 , 19 corner: 19 , 35) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitTower new projectileDamage: 39;  reach: 5);  addComponent: (OnebitBlockMovement new cost: 999;  canDamage: false;  canTraverse: false);  addComponent: (OnebitBlocksPlacement new));
	
		addTemplate: (ECSTemplate new
	name: 'TowerProjectile'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (14 , 18 corner: 30 , 34) scale: 2 rotation: 0));  addComponent: (OnebitProjectile new sourcePosition: 0 , 0;  targetPosition: 0 , 0;  damage: 75;  source: 0);  addComponent: (OnebitPosition new));
	
		addTemplate: (ECSTemplate new
	name: 'Base'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (6 , 19 corner: 22 , 35) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitBase new damageTaken: 0);  addComponent: (OnebitBlocksPlacement new));
	
		addTemplate: (ECSTemplate new
	name: 'Boulder'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (4 , 0 corner: 20 , 16) scale: 2 rotation: 0));  addComponent: (OnebitPosition new);  addComponent: (OnebitBlocksPlacement new);  addComponent: (OnebitBlockMovement new cost: 4;  canDamage: true;  canTraverse: false));
	
		addTemplate: (ECSTemplate new
	name: 'TerrainButton'; addComponent: (OnebitTerrainButton new form: (ECSTileMapAsset of: #onebit at: (23 , 23 corner: 39 , 39) scale: 2 rotation: 0);  type: #unset));
	
		addTemplate: (ECSTemplate new
	name: 'Hole'; addComponent: (OnebitBlocksPlacement new);  addComponent: (OnebitHole new);  addComponent: (OnebitPosition new);  addComponent: (OnebitBlockMovement new cost: 2;  canDamage: false;  canTraverse: true));
	
		addTemplate: (ECSTemplate new
	name: 'Tree'; addComponent: (OnebitBlocksPlacement new);  addComponent: (OnebitFlammable new);  addComponent: (Health new max: 100;  current: 100);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (3 , 1 corner: 19 , 17) scale: 2 rotation: 0));  addComponent: (OnebitPosition new));
	yourself