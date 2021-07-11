as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	
	componentClasses: ((OrderedCollection new) add: Physics; add: Colliding; add: Rendered; add: Transform; add: DeltaTime; add: Gravity; add: Label; add: UniverseView; yourself);
	register: (Pipeline new
		title: 'Game Loop';
		runContinuously: true;
		register: TimeSystem new;
		register: PhysicsSystem new;
		register: InspectorSystem new disable;
		register: PlacementSystem new;
		register: CleanUpSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: JetpackRenderSystem new;
		register: PlacementDrawSystem new;
		register: DemoDebugBoundsSystem new disable);
	spawnNewWith: #(DeltaTime Gravity) do: [:deltaTime :gravity | 
		deltaTime milliseconds: 21; last: 3740893203325; fpsAccumulated: 213; fpsAverage: 45.146726862302486; numAccumulated: 10; elapsed: 88630.
		gravity force: 0 , 401];
	spawnNewWith: #(Physics Colliding Label Transform Rendered PlayerInput) do: [:physics :colliding :label :transform :rendered :playerInput | 
		physics velocity: 0.0 , 0; friction: 0.9.
		colliding ignoreList: #(); group: nil.
		label label: 'player1'.
		transform bounds: (30.0 , 492.0 corner: 96.0 , 584).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_front.png').
		playerInput acceleration: 30; left: $A; right: $D; up: $W; down: $S; shoot: $C];
	spawnNewWith: #(Physics Colliding Label Transform Rendered PlayerInput) do: [:physics :colliding :label :transform :rendered :playerInput | 
		physics velocity: 0.0 , 0; friction: 0.9.
		colliding ignoreList: #(); group: nil.
		label label: 'player2'.
		transform bounds: (530.0 , 283.9999999999998 corner: 830.0 , 584).
		rendered color: (ECSColor rgba: 16rFF0000FF); form: nil.
		playerInput acceleration: 30; left: $J; right: $L; up: $I; down: $K; shoot: $M];
	spawnNewWith: #(Transform Rendered) do: [:transform :rendered | 
		transform bounds: (196 , 0 corner: 396 , 20).
		rendered color: (ECSColor rgba: 16rFFFF0000); form: nil];
	spawnNewWith: #(Colliding Transform Rendered) do: [:colliding :transform :rendered | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		transform bounds: (210 , 140 corner: 280 , 210).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png')];
	spawnNewWith: #(Colliding Transform Rendered) do: [:colliding :transform :rendered | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		transform bounds: (140 , 140 corner: 210 , 210).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png')];
	spawnNewWith: #(Colliding Transform Rendered) do: [:colliding :transform :rendered | 
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		transform bounds: (210 , 70 corner: 280 , 140).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png')];
	
		addTemplate: (ECSTemplate new
	name: 'Platform'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 70 , 70));  addComponent: (Colliding new ignoreList: ((OrderedCollection new));  group: nil));
	save; yourself