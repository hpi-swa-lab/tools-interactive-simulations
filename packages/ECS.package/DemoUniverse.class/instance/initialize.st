as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: DemoRenderSystem new;
		register: DemoDebugBoundsSystem new disable);
	register: (Pipeline new
		title: 'Logic';
		runContinuously: true;
		register: DemoInputSystem new;
		register: PhysicsSystem new);
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (223@121); isCurrent: false; mousePosition: 1089 , 1235; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(Rendered DemoPlayerControlled Physics Transform Colliding) do: [:rendered :demoPlayerControlled :physics :transform :colliding | 
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'HUD/hud_p1.png').
		demoPlayerControlled .
		physics velocity: 0.0 , 0.0; friction: 0.
		transform bounds: (147.0 , 73.0 corner: 195.0 , 121).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (1514@1463); isCurrent: false; mousePosition: 1392 , 1458; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(Gravity DeltaTime) do: [:gravity :deltaTime | 
		gravity force: 0 , 0.
		deltaTime milliseconds: 0; last: 0; fpsAccumulated: 0; fpsAverage: 0; numAccumulated: 0; elapsed: 0];
	yourself