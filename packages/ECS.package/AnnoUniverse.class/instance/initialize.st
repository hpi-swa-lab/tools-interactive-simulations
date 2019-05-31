as yet unclassified
initialize

^ Universe new
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: TimeSystem new;
	register: AnnoRenderSystem new;
	register: AnnoCameraSystem new;
	register: AnnoFrameCounterSystem new);
register: (Pipeline new
	title: 'World Generation';
	runContinuously: false;
	register: AnnoResetWorldSystem new;
	register: AnnoWorldGeneratorSystem new);
yourself