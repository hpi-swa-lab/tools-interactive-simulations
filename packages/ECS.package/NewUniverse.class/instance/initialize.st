as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	
	componentClasses: ((OrderedCollection new) add: Physics; add: Colliding; add: Rendered; add: Transform; add: DeltaTime; add: Label; add: UniverseView; yourself);
	register: (Pipeline new
		title: 'Game Loop';
		runContinuously: true;
		register: ECSBlocksTimeSystem new;
		register: ECSBlocksPhysicsSystem new;
		register: ECSBlocksPlacementSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: ECSBlocksRenderSystem new;
		register: ECSBlocksDemoDebugBoundsSystem new disable);
	spawnNewWith: #(Label DeltaTime) do: [:label :deltaTime | 
		label label: 'UniverseInfo'.
		deltaTime milliseconds: 21; last: 3740893203325; fpsAccumulated: 213; fpsAverage: 45.146726862302486; numAccumulated: 10; elapsed: 88630];
	spawnNewWith: #(Label Transform Rendered Physics) do: [:label :transform :rendered :physics | 
		label label: 'BouncingBall'.
		transform bounds: (366.27699999999675 , 205.08399999999986 corner: 413.27699999999845 , 252.084000000001).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'HUD/hud_p1.png').
		physics velocity: 0.0 , -79.0; friction: 0];
	save; yourself