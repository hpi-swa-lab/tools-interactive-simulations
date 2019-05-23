as yet unclassified
initialize

	| player1 player2 |
	super initialize.
	
	self
		spawnNewWith: {
			Gravity new force: 0,500.
			DeltaTime new milliseconds: 0; last: Time millisecondClockValue.
			ScreenSize new size: 0,0};
		
		register: TimeSystem new;
		register: InputSystem new;
		register: JetpackSystem new;
		register: WeaponSystem new;
		register: PhysicsSystem new;
		register: ProjectileSystem new;
		register: InspectorSystem new;
		register: RenderSystem new;
		register: CleanUpSystem new.
	
	player1 := self spawnNewWith: {
		Label new label: 'player1'.
		Transform new bounds: (30,50 extent: 66,92).
		Colliding new.
		Physics new.
		Jetpack new acceleration: 300; fuel: 200; capacity: 200.
		Weapon new cooldown: 100.
		PlayerInput new left: $a; right: $d; up: $w; down: $s; shoot: $c.
		Rendered new color: ECSColor red; form: (ECSAsset of: #platformer_base at: 'Player/p2_front.png' sized: 66,92)}.
	
	player2 := self spawnNewWith: {
		Label new label: 'player2'.
		Transform new bounds: (530,500 extent: 300,300).
		Colliding new.
		Physics new.
		Weapon new cooldown: 100.
		PlayerInput new left: $j; right: $l; up: $i; down: $k; shoot: $m.
		Rendered new color: "ECS"Color blue}.
	
	self spawnNewWith: {
		Transform new bounds: (0,0 extent: 200,20).
		Rendered new color: ECSColor red.
		JetpackFuelIndicator new player: player1}