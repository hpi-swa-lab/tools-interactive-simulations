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
		runContinuously: true;
		register: InspectorSystem new;
		register: SGTransformRenderSystem new disable);
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: SomeGameRenderSystem new);
	spawnNewWith: #(Transform Label PlantEatingComponent Rendered) do: [:transform :label :plantEatingComponent :rendered | 
		transform bounds: (35 , 24 corner: 55 , 44).
		label label: (Text string: 'tapir1' runs: (RunArray runs: #(6) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))).
		plantEatingComponent howMuch: 5; fromGrass: true; fromTallFeeders: false.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'animal_tapir.png')];
	spawnNewWith: #(DeltaTime) do: [:deltaTime | 
		deltaTime milliseconds: 0; last: 3738917769107; fpsAccumulated: 0; fpsAverage: 0; numAccumulated: 0; elapsed: 0];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (554@696); isCurrent: false; mousePosition: 347 , 694; leftJustUp: true; leftJustDown: true; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 22 , 46];
	spawnNewWith: #(Transform PendingPlacement PlantEatingComponent InstanceOfTemplate Rendered) do: [:transform :pendingPlacement :plantEatingComponent :instanceOfTemplate :rendered | 
		transform bounds: (0 , 0 corner: 20 , 20).
		pendingPlacement .
		plantEatingComponent howMuch: 0; fromGrass: false; fromTallFeeders: false.
		instanceOfTemplate template: 'tapir'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'animal_tapir.png')];
	
		addTemplate: (ECSTemplate new
	name: 'tapir'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #SomeGame at: 'animal_tapir.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 20 , 20));  addComponent: (PlantEatingComponent new howMuch: 0;  fromGrass: false;  fromTallFeeders: false));
	yourself