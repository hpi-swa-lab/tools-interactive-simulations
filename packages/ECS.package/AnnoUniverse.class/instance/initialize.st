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
	register: AnnoBuildingPlacementSystem new;
	register: AnnoRulerSystem new disable;
	register: AnnoMenuSystem new;
	register: AnnoAvailableResourcesSystem new;
	register: AnnoFrameCounterSystem new);
register: (Pipeline new
	title: 'BuildingPreview';
	runContinuously: false;
	register: AnnoCreateBuildingPreviewSystem new);
register: (Pipeline new
	title: 'Minimap';
	runContinuously: false;
	register: AnnoNoiseTestSystem new);
yourself