as yet unclassified
initialize

^ Universe new

stepTime: 0;
register: (Pipeline new
	title: 'main';
	runContinuously: true;
	register: RenderSystem new);
spawnNewWith: {Rendered. Transform} do: [:rendered :transform | 
	rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p3_walk/PNG/p3_walk05.png'  sized: 1, 1).
	transform bounds: (365 , 246 corner: 365 , 246)];
yourself