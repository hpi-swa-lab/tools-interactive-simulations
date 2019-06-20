as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Main';
		runContinuously: true;
		register: (SomeGameInputSystem new enabled: true);
		register: (SomeGameRenderSystem new enabled: true));
	register: (Pipeline new
		title: 'Editing';
		runContinuously: false;
		register: (InspectorSystem new enabled: true);
		register: (SGTransformRenderSystem new enabled: true));
	spawnNewWith: #(PlantEatingComponent Transform Label Rendered) do: [:plantEatingComponent :transform :label :rendered | 
		plantEatingComponent howMuch: 5; fromGrass: true; fromTallFeeders: false.
		transform bounds: (35 , 24 corner: 55 , 44).
		label label: (Text string: 'tapir1' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'tapir.png')];
	spawnNewWith: #(ScreenSize Mouse DeltaTime) do: [:screenSize :mouse :deltaTime | 
		screenSize size: 990 , 891.
		mouse position: 934 , 882; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; middleDown: false; middleJustDown: false; middleJustUp: false; positionDelta: 0 , 0.
		deltaTime milliseconds: 0; last: 3738473119365; fpsAccumulated: 0; fpsAverage: 0; numAccumulated: 0; elapsed: 0];
	yourself