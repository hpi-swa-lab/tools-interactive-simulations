as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	saveFilter: [:universe | universe query: #(#id #Label)];
	register: (Pipeline new
		title: 'Loop';
		runContinuously: true;
		register: AnnoStateSystem new;
		register: TimeSystem new;
		register: AnnoCameraSystem new;
		register: (AnnoDynamicWorldGeneratorSystem new
		constantAt: #ChunkSize put: 3;
		constantAt: #TileSize put: 64 , 32);
		register: (AnnoRenderSystem new
		constantAt: #TileSize put: 64 , 32);
		register: AnnoBuildingPlacementSystem new;
		register: (AnnoRulerSystem new disable
		constantAt: #ChunkSize put: 3;
		constantAt: #Length put: 30;
		constantAt: #TileSize put: 64 , 32;
		constantAt: #Distance put: 64 , 32);
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
		register: (AnnoNoiseTestSystem new
		constantAt: #TileSize put: 64 , 32;
		constantAt: #Size put: 3;
		constantAt: #MapSize put: 100));
	yourself