as yet unclassified
initialize

	| player1 player2 pipeline |
	super initialize.
	
	pipeline := Pipeline new.
	pipeline
		title: 'Game Loop';
		runContinuously: true;
		register: TimeSystem new;
		register: InputSystem new;
		register: JetpackSystem new;
		register: WeaponSystem new;
		register: PhysicsSystem new;
		register: ProjectileSystem new;
		register: InspectorSystem new;
		register: RenderSystem new;
		register: PlacementSystem new;
		register: CleanUpSystem new.
	
	self
		spawnNewWith: {Gravity. DeltaTime. ScreenSize. Mouse} do: [:gravity :time :size :mouse |
			gravity force: 0,500.
			time milliseconds: 0; last: Time millisecondClockValue; elapsed: 0.
			size size: 0,0.
			mouse position: 0 , 0; leftJustDown: false; leftJustUp: false; leftDown: false];
		register: pipeline.
	
	player1 := self spawnNewWith: {Label. Transform. Colliding. Physics. Jetpack. Weapon. PlayerInput. Rendered} do: [:label :transform :colliding :physics :jetpack :weapon :input : rendered |
		label label: 'player1'.
		transform bounds: (30 , 50 extent: 66 , 92).
		colliding group: nil; ignoreList: #().
		physics friction: 0.9; velocity: 0 , 0.
		jetpack acceleration: 300; fuel: 200; capacity: 200.
		weapon cooldown: 100; lastShotTime: 0.
		input left: $a; right: $d; up: $w; down: $s; shoot: $c; acceleration: 30.
		rendered color: ECSColor red; form: (ECSImageAsset of: #platformer_base at: 'Player/p2_front.png' sized: 66 , 92)].
	
	player2 := self spawnNewWith: {Label. Transform. Colliding. Physics. PlayerInput. Rendered} do: [:label :transform :colliding :physics :input :rendered |
		label label: 'player2'.
		transform bounds: (530,500 extent: 300,300).
		colliding group: nil; ignoreList: #().
		physics friction: 0.9; velocity: 0 , 0.
		input left: $j; right: $l; up: $i; down: $k; shoot: $m; acceleration: 30.
		rendered color: ECSColor blue; form: nil].
	
	self spawnNewWith: {Transform. Rendered. JetpackFuelIndicator} do: [:transform :rendered :indicator |
		transform bounds: (0,0 extent: 200,20).
		rendered color: ECSColor red; form: nil.
		indicator player: player1]