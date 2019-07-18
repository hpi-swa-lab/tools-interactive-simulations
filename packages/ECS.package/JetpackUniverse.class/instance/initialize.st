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
		deltaTime milliseconds: 25; last: 3740892450942; fpsAccumulated: 275; fpsAverage: 43.10344827586207; numAccumulated: 12; elapsed: 9352];
	spawnNewWith: #(Label Rendered PlayerInput Transform Jetpack Physics Colliding Weapon) do: [:label :rendered :playerInput :transform :jetpack :physics :colliding :weapon | 
		label label: 'player1'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_front.png').
		playerInput acceleration: 30; left: $A; right: $D; up: $W; down: $S; shoot: $C.
		transform bounds: (30.0 , 492.0000000000002 corner: 96.0 , 584).
		jetpack fuel: 200; acceleration: 300; capacity: 200.
		physics velocity: 0.0 , 0; friction: 0.9.
		colliding ignoreList: #(); group: nil.
		weapon lastShotTime: 0; cooldown: 100];
	spawnNewWith: #(Label Rendered PlayerInput Transform Physics Colliding) do: [:label :rendered :playerInput :transform :physics :colliding | 
		label label: 'player2'.
		rendered color: (ECSColor rgba: 16rFF0000FF); form: nil.
		playerInput acceleration: 30; left: $J; right: $L; up: $I; down: $K; shoot: $M.
		transform bounds: (530.0 , 283.9999999999999 corner: 830.0 , 584).
		physics velocity: 0.0 , 0; friction: 0.9.
		colliding ignoreList: #(); group: nil];
	spawnNewWith: #(Rendered JetpackFuelIndicator Transform) do: [:rendered :jetpackFuelIndicator :transform | 
		rendered color: (ECSColor rgba: 16rFFFF0000); form: nil.
		jetpackFuelIndicator player: 2.
		transform bounds: (196 , 0 corner: 396 , 20)];
	yourself