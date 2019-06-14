as yet unclassified
initialize

super initialize.
self
stepTime: 0;
register: (Pipeline new
	title: 'Loop';
	runContinuously: true;
	register: AnnoStateSystem new;
	register: TimeSystem new;
	register: AnnoCameraSystem new;
	register: AnnoDynamicWorldGeneratorSystem new;
	register: AnnoRenderSystem new;
	register: AnnoRulerSystem new;
	register: AnnoMenuSystem new;
	register: AnnoFrameCounterSystem new);
register: (Pipeline new
	title: 'World Generation';
	runContinuously: false;
	register: AnnoResetWorldSystem new);
register: (Pipeline new
	title: 'Minimap';
	runContinuously: false;
	register: AnnoNoiseTestSystem new);
yourself