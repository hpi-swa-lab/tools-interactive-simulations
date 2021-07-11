as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	
	componentClasses: ((OrderedCollection new) add: Physics; add: Colliding; add: JetpackFuelIndicator; add: Weapon; add: Rendered; add: Transform; add: InstanceOfTemplate; add: DeltaTime; add: PlayerInput; add: Gravity; add: Label; add: UniverseView; add: Jetpack; add: ECSPersisted; yourself);
	register: (Pipeline new
		title: 'Game Loop';
		runContinuously: true;
		register: TimeSystem new;
		register: InputSystem new;
		register: JetpackSystem new;
		register: WeaponSystem new;
		register: PhysicsSystem new;
		register: ProjectileSystem new;
		register: InspectorSystem new disable;
		register: PlacementSystem new;
		register: CleanUpSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: JetpackRenderSystem new;
		register: PlacementDrawSystem new;
		register: DemoDebugBoundsSystem new disable);
	spawnNewWith: #(DeltaTime ECSPersisted) do: [:deltaTime :eCSPersisted | 
		deltaTime milliseconds: 21; last: 3740893203325; fpsAccumulated: 213; fpsAverage: 45.146726862302486; numAccumulated: 10; elapsed: 88630.
		eCSPersisted ];
	spawnNewWith: #(Physics Weapon Colliding Label Transform Rendered PlayerInput Jetpack ECSPersisted) do: [:physics :weapon :colliding :label :transform :rendered :playerInput :jetpack :eCSPersisted | 
		physics velocity: 0.0 , 0; friction: 0.9.
		weapon lastShotTime: 0; cooldown: 100.
		colliding ignoreList: #(); group: nil.
		label label: 'player1'.
		transform bounds: (30.0 , 492.0 corner: 96.0 , 584).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_front.png').
		playerInput acceleration: 30; left: $A; right: $D; up: $W; down: $S; shoot: $C.
		jetpack fuel: 200; acceleration: 300; capacity: 200.
		eCSPersisted ];
	spawnNewWith: #(Physics Colliding Label Transform Rendered PlayerInput ECSPersisted) do: [:physics :colliding :label :transform :rendered :playerInput :eCSPersisted | 
		physics velocity: 0.0 , 0; friction: 0.9.
		colliding ignoreList: #(); group: nil.
		label label: 'player2'.
		transform bounds: (530.0 , 283.9999999999998 corner: 830.0 , 584).
		rendered color: (ECSColor rgba: 16rFF0000FF); form: nil.
		playerInput acceleration: 30; left: $J; right: $L; up: $I; down: $K; shoot: $M.
		eCSPersisted ];
	spawnNewWith: #(Transform JetpackFuelIndicator Rendered ECSPersisted) do: [:transform :jetpackFuelIndicator :rendered :eCSPersisted | 
		transform bounds: (196 , 0 corner: 396 , 20).
		jetpackFuelIndicator player: 2.
		rendered color: (ECSColor rgba: 16rFFFF0000); form: nil.
		eCSPersisted ];
	spawnNewWith: #(Colliding InstanceOfTemplate Transform Rendered ECSPersisted) do: [:colliding :instanceOfTemplate :transform :rendered :eCSPersisted | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		instanceOfTemplate template: 'Platform'.
		transform bounds: (210 , 140 corner: 280 , 210).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png').
		eCSPersisted ];
	spawnNewWith: #(Colliding InstanceOfTemplate Transform Rendered ECSPersisted) do: [:colliding :instanceOfTemplate :transform :rendered :eCSPersisted | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		instanceOfTemplate template: 'Platform'.
		transform bounds: (140 , 140 corner: 210 , 210).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png').
		eCSPersisted ];
	spawnNewWith: #(Colliding InstanceOfTemplate Transform Rendered ECSPersisted) do: [:colliding :instanceOfTemplate :transform :rendered :eCSPersisted | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		instanceOfTemplate template: 'Platform'.
		transform bounds: (210 , 70 corner: 280 , 140).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png').
		eCSPersisted ];
	
		addTemplate: (ECSTemplate new
	name: 'Platform'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 70 , 70));  addComponent: (Colliding new ignoreList: ((OrderedCollection new));  group: nil));
	save; yourself