as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Game Loop';
		runContinuously: true;
		register: TimeSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: DemoRenderSystem new;
		register: DemoDebugBoundsSystem new disable);
	spawnNewWith: #(Transform Rendered Label) do: [:transform :rendered :label | 
		transform bounds: (106 , 85 corner: 181 , 184).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_walk/PNG/p2_walk08.png').
		label label: 'Player'];
	spawnNewWith: #(Transform Rendered Label) do: [:transform :rendered :label | 
		transform bounds: (32 , 72 corner: 80 , 118).
		rendered color: (ECSColor rgba: 16rFF3123C5); form: nil.
		label label: nil];
	save; yourself