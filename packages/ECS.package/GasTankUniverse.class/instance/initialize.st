as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	
	componentClasses: ((OrderedCollection new) add: Physics; add: Rendered; add: Transform; add: DeltaTime; add: Label; add: UniverseView; add: ParticleSettings; add: Happy; yourself);
	register: (Pipeline new
		title: 'Game Loop';
		runContinuously: true;
		register: TimeSystem new;
		register: GasTankPhysics new;
		register: ParticleGenerationSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: JetpackRenderSystem new;
		register: PlacementDrawSystem new;
		register: DemoDebugBoundsSystem new disable);
	spawnNewWith: #(Label DeltaTime ParticleSettings) do: [:label :deltaTime :particleSettings | 
		label label: 'GasTankConfig'.
		deltaTime milliseconds: 21; last: 3740893203325; fpsAccumulated: 213; fpsAverage: 45.146726862302486; numAccumulated: 10; elapsed: 88630.
		particleSettings numParticles: 0];
	spawnNewWith: #(Label Transform Rendered Physics) do: [:label :transform :rendered :physics | 
		label label: 'Particle'.
		transform bounds: (71.89619971188834 , 23.331657673204223 corner: 118.89619971188874 , 70.33165767320463).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'HUD/hud_p1.png').
		physics velocity: 135.0 , 26.0; friction: 0];
	
		addTemplate: (ECSTemplate new
	name: 'Platform'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Tiles/stoneRight.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 70 , 70));  addComponent: (Colliding new ignoreList: ((OrderedCollection new));  group: nil));
	save; yourself