as yet unclassified
initialize

super initialize.
self
stepTime: 0;
register: (Pipeline new
	title: 'main';
	runContinuously: true;
	register: RenderSystem new);
spawnNewWith: {Rendered. Transform} do: [:rendered :transform | 
	rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p3_walk/PNG/p3_walk05.png').
	transform bounds: (365 , 246 corner: 365 , 246)];

	addTemplate: (ECSTemplate new
name: 'MyTemplate'; addComponent: ((Projectile basicNew instVarAt: 1 put: false; instVarAt: 2 put: 0; instVarAt: 3 put: 0; yourself));  addComponent: ((Transform basicNew instVarAt: 1 put: false; instVarAt: 2 put: (0 , 0 corner: 0 , 0); yourself)));
yourself