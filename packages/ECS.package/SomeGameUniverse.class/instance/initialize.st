as yet unclassified
initialize

super initialize.
self
stepTime: 0;
register: (Pipeline new
	title: 'Main';
	runContinuously: true;
	register: RenderSystem new;
	register: SomeGameInputSystem new);
spawnNewWith: {Rendered. Transform} do: [:rendered :transform | 
	rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p3_walk/PNG/p3_walk08.png').
	transform bounds: (0 , -1 corner: 39 , 33)];
yourself