as yet unclassified
initialize

^ Universe new
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: OnebitRenderSystem new);
register: (Pipeline new
	title: 'Generation';
	runContinuously: false;
	register: OnebitGeneratorSystem new);
spawnNewWith: {KeyEvent} do: [:keyEvent | 
	keyEvent key: (Character value: 376)];
yourself