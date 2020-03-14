as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
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
		register: RenderSystem new;
		register: PlacementDrawSystem new;
		register: DemoDebugBoundsSystem new disable);
	spawnNewWith: #(Gravity DeltaTime) do: [:gravity :deltaTime | 
		gravity force: 0 , 500.
		deltaTime milliseconds: 21; last: 3740893203325; fpsAccumulated: 213; fpsAverage: 45.146726862302486; numAccumulated: 10; elapsed: 88630];
	spawnNewWith: #(Colliding Label Weapon Jetpack Rendered Physics PlayerInput Transform) do: [:colliding :label :weapon :jetpack :rendered :physics :playerInput :transform | 
		colliding ignoreList: #(); group: nil.
		label label: 'player1'.
		weapon lastShotTime: 0; cooldown: 100.
		jetpack fuel: 200; acceleration: 300; capacity: 200.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_front.png').
		physics velocity: 0.0 , 0; friction: 0.9.
		playerInput acceleration: 30; left: $A; right: $D; up: $W; down: $S; shoot: $C.
		transform bounds: (30.0 , 492.0 corner: 96.0 , 584)];
	spawnNewWith: #(Colliding Label Rendered Physics PlayerInput Transform) do: [:colliding :label :rendered :physics :playerInput :transform | 
		colliding ignoreList: #(); group: nil.
		label label: 'player2'.
		rendered color: (ECSColor rgba: 16rFF0000FF); form: nil.
		physics velocity: 0.0 , 0; friction: 0.9.
		playerInput acceleration: 30; left: $J; right: $L; up: $I; down: $K; shoot: $M.
		transform bounds: (530.0 , 283.9999999999998 corner: 830.0 , 584)];
	spawnNewWith: #(Rendered JetpackFuelIndicator Transform) do: [:rendered :jetpackFuelIndicator :transform | 
		rendered color: (ECSColor rgba: 16rFFFF0000); form: nil.
		jetpackFuelIndicator player: 2.
		transform bounds: (196 , 0 corner: 396 , 20)];
	spawnNewWith: #(Colliding InstanceOfTemplate Rendered Transform) do: [:colliding :instanceOfTemplate :rendered :transform | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png').
		transform bounds: (210 , 140 corner: 280 , 210)];
	spawnNewWith: #(Colliding InstanceOfTemplate Rendered Transform) do: [:colliding :instanceOfTemplate :rendered :transform | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png').
		transform bounds: (140 , 140 corner: 210 , 210)];
	spawnNewWith: #(Colliding InstanceOfTemplate Rendered Transform) do: [:colliding :instanceOfTemplate :rendered :transform | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png').
		transform bounds: (210 , 70 corner: 280 , 140)];
	
		addTemplate: (ECSTemplate new
	name: 'Platform'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 70 , 70));  addComponent: (Colliding new ignoreList: ((OrderedCollection new));  group: nil));
	save; yourself