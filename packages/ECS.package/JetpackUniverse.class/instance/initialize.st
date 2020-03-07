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
		register: InspectorSystem new;
		register: PlacementSystem new;
		register: CleanUpSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: RenderSystem new);
	spawnNewWith: #(Gravity DeltaTime) do: [:gravity :deltaTime | 
		gravity force: 0 , 500.
		deltaTime milliseconds: 21; last: 3740893203325; fpsAccumulated: 213; fpsAverage: 45.146726862302486; numAccumulated: 10; elapsed: 88630];
	spawnNewWith: #(Jetpack Colliding Rendered Transform PlayerInput Weapon Label Physics) do: [:jetpack :colliding :rendered :transform :playerInput :weapon :label :physics | 
		jetpack fuel: 200; acceleration: 300; capacity: 200.
		colliding ignoreList: #(); group: nil.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_front.png').
		transform bounds: (30.0 , 492.0 corner: 96.0 , 584).
		playerInput acceleration: 30; left: $A; right: $D; up: $W; down: $S; shoot: $C.
		weapon lastShotTime: 0; cooldown: 100.
		label label: 'player1'.
		physics velocity: 0.0 , 0; friction: 0.9];
	spawnNewWith: #(Colliding Rendered Transform PlayerInput Label Physics) do: [:colliding :rendered :transform :playerInput :label :physics | 
		colliding ignoreList: #(); group: nil.
		rendered color: (ECSColor rgba: 16rFF0000FF); form: nil.
		transform bounds: (530.0 , 283.9999999999998 corner: 830.0 , 584).
		playerInput acceleration: 30; left: $J; right: $L; up: $I; down: $K; shoot: $M.
		label label: 'player2'.
		physics velocity: 0.0 , 0; friction: 0.9];
	spawnNewWith: #(Rendered Transform JetpackFuelIndicator) do: [:rendered :transform :jetpackFuelIndicator | 
		rendered color: (ECSColor rgba: 16rFFFF0000); form: nil.
		transform bounds: (196 , 0 corner: 396 , 20).
		jetpackFuelIndicator player: 2];
	
		addTemplate: (ECSTemplate new
	name: 'Platform'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 64 , 64)));
	save;
	yourself