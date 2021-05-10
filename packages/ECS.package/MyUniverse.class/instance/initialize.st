as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Game Loop';
		runContinuously: true;
		register: TimeSystem new;
		register: MyPhysicsSystem new;
		register: (MyInputSystem new
		constantAt: #MovementSpeed put: 5;
		constantAt: #JumpHeight put: -10));
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: DemoRenderSystem new;
		register: DemoDebugBoundsSystem new disable);
	spawnNewWith: #(MyPlayer Label Transform Rendered MyPhysics) do: [:myPlayer :label :transform :rendered :myPhysics | 
		myPlayer .
		label label: 'Player'.
		transform bounds: (156 , 476 corner: 225 , 572).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_walk/PNG/p2_walk08.png').
		myPhysics velocity: 0 , 0];
	spawnNewWith: #(Label Transform Rendered) do: [:label :transform :rendered | 
		label label: nil.
		transform bounds: (32 , 125 corner: 80 , 171).
		rendered color: (ECSColor rgba: 16rFF3123C5); form: nil];
	
		addTemplate: (ECSTemplate new
	name: 'fallingBox'; addComponent: (Transform new bounds: (0 , 502 corner: 70 , 572));  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Tiles/boxExplosive.png'));  addComponent: (MyPhysics new velocity: 0 , 0));
	save; yourself