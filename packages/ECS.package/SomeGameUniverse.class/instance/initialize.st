as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Main';
		runContinuously: true;
		register: SomeGameInputSystem new);
	register: (Pipeline new
		title: 'Editing';
		runContinuously: false;
		register: InspectorSystem new;
		register: SGTransformRenderSystem new);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: SomeGameRenderSystem new);
	spawnNewWith: #(PlantEatingComponent Transform Label Rendered) do: [:plantEatingComponent :transform :label :rendered | 
		plantEatingComponent howMuch: 5; fromGrass: true; fromTallFeeders: false.
		transform bounds: (35 , 24 corner: 55 , 44).
		label label: (Text string: 'tapir1' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))).
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'tapir.png')];
	spawnNewWith: #(UniverseView DeltaTime) do: [:view :deltaTime | 
		view initialize.
		deltaTime milliseconds: 0; last: 3738473509157; fpsAccumulated: 0; fpsAverage: 0; numAccumulated: 0; elapsed: 0];
	yourself