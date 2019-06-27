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
		label label: (Text string: 'tapirVonHand' runs: (RunArray runs: #(12) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))).
		plantEatingComponent howMuch: 5; fromGrass: true; fromTallFeeders: false.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'animal_tapir.png')];
	spawnNewWith: #(DeltaTime) do: [:deltaTime | 
		deltaTime milliseconds: 0; last: 3738919437027; fpsAccumulated: 0; fpsAverage: 0; numAccumulated: 0; elapsed: 0];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (116@134); isCurrent: false; mousePosition: 347 , 694; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (116@134); isCurrent: false; mousePosition: 46 , -30; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (116@134); isCurrent: false; mousePosition: 389 , 112; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (396@584); isCurrent: false; mousePosition: 254 , 73; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(Transform Label InstanceOfTemplate MeatEatingComponent Rendered) do: [:transform :label :instanceOfTemplate :meatEatingComponent :rendered | 
		transform bounds: (110 , 129 corner: 130 , 149).
		label label: (Text string: 'wolf' runs: (RunArray runs: #(4) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))).
		instanceOfTemplate template: 'wolf'.
		meatEatingComponent howMuch: 0.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'animal_wolf.png')];
	spawnNewWith: #(Transform Label FishEatingComponent InstanceOfTemplate Rendered) do: [:transform :label :fishEatingComponent :instanceOfTemplate :rendered | 
		transform bounds: (188 , 62 corner: 208 , 82).
		label label: (Text string: 'eagle' runs: (RunArray runs: #(5) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))).
		fishEatingComponent howMuch: 0.
		instanceOfTemplate template: 'eagle'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #SomeGame at: 'animal_eagle.png')];
	
		addTemplate: (ECSTemplate new
	name: 'tapir'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #SomeGame at: 'animal_tapir.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 20 , 20));  addComponent: (PlantEatingComponent new howMuch: 0;  fromGrass: false;  fromTallFeeders: false);  addComponent: (Label new label: (Text string: 'tapir' runs: (RunArray runs: #(5) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself)))));
	
		addTemplate: (ECSTemplate new
	name: 'eagle'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #SomeGame at: 'animal_eagle.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 20 , 20));  addComponent: (Label new label: (Text string: 'eagle' runs: (RunArray runs: #(5) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (FishEatingComponent new howMuch: 0));
	
		addTemplate: (ECSTemplate new
	name: 'wolf'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #SomeGame at: 'animal_wolf.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 20 , 20));  addComponent: (Label new label: (Text string: 'wolf' runs: (RunArray runs: #(4) values: ((Array new: 1) at: 1 put: ((Array new: 1) at: 1 put: (TextColor basicNew instVarAt: 1 put: (Color r: 1 g: 0.0 b: 0.0); yourself); yourself); yourself))));  addComponent: (MeatEatingComponent new howMuch: 0));
	yourself