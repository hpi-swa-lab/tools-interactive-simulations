as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	
	componentClasses: ((OrderedCollection new) add: Physics; add: Rendered; add: Transform; add: DeltaTime; add: Label; add: UniverseView; yourself);
	register: (Pipeline new
		title: 'Game Loop';
		runContinuously: true;
		register: ECSBlocksTimeSystem new;
		register: ECSBlocksPhysicsSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: ECSBlocksRenderSystem new;
		register: ECSBlocksDemoDebugBoundsSystem new disable);
	spawnNewWith: #(DeltaTime Label) do: [:deltaTime :label | 
		deltaTime milliseconds: 21; last: 3740893203325; fpsAccumulated: 213; fpsAverage: 45.146726862302486; numAccumulated: 10; elapsed: 88630.
		label label: 'UniverseInfo'];
	spawnNewWith: #(Physics Label Transform Rendered) do: [:physics :label :transform :rendered | 
		physics velocity: 0.0 , -53.6496578470703; friction: 0.
		label label: 'BouncingBall'.
		transform bounds: (366.27699999999675 , 205.08399999999986 corner: 413.27699999999845 , 252.084000000001).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'HUD/hud_p1.png')];
	save; yourself