as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: DemoRenderSystem new;
		register: DemoDebugBoundsSystem new;
		register: DemoPendingPlacementRenderSystem new);
	register: (Pipeline new
		title: 'Logic';
		runContinuously: true;
		register: TimeSystem new;
		register: DemoAIMovementSystem new;
		register: DemoInputSystem new;
		register: DemoPhysicsSystem new;
		register: DemoPendingPlacementSystem new;
		register: CleanUpSystem new);
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (223@121); isCurrent: false; mousePosition: 1089 , 1235; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(Rendered DemoPlayerControlled Physics Transform Colliding) do: [:rendered :demoPlayerControlled :physics :transform :colliding | 
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Player/p2_walk/PNG/p2_walk08.png').
		demoPlayerControlled .
		physics velocity: 2.8034035267001615e-78 , 2.1959999999999997; friction: 0.8.
		transform bounds: (1008.0363260203646 , 895.9989999999998 corner: 1072.0363260203549 , 959.999).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (1514@1463); isCurrent: false; mousePosition: 1504 , 1378; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 28 , 6];
	spawnNewWith: #(Gravity DeltaTime) do: [:gravity :deltaTime | 
		gravity force: 0 , 61.
		deltaTime milliseconds: 36; last: 3742621217819; fpsAccumulated: 398; fpsAverage: 31.79650238473768; numAccumulated: 12; elapsed: 3742619692837];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((960@960) corner: 1024 , 1024).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Physics Transform Colliding DemoAIMovement) do: [:instanceOfTemplate :rendered :physics :transform :colliding :demoAIMovement | 
		instanceOfTemplate template: 'Enemy'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Enemies/flyFly2.png').
		physics velocity: -42.593452768481306 , 2.1959999999999997; friction: 0.
		transform bounds: (1165.4375472739198 , 447.99900000001315 corner: 1237.437547273927 , 511.999).
		colliding ignoreList: ((OrderedCollection new)); group: nil.
		demoAIMovement switchDirectionTimeout: 0.10100000000000212; moveLeft: true];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1344@512) corner: 1408 , 576).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1280@512) corner: 1344 , 576).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1216@512) corner: 1280 , 576).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1152@512) corner: 1216 , 576).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1088@512) corner: 1152 , 576).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((256@768) corner: 320 , 832).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((320@768) corner: 384 , 832).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((384@768) corner: 448 , 832).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((512@768) corner: 576 , 832).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((448@768) corner: 512 , 832).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1088@960) corner: 1152 , 1024).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1152@960) corner: 1216 , 1024).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((1024@960) corner: 1088 , 1024).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((896@960) corner: 960 , 1024).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((832@960) corner: 896 , 1024).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	spawnNewWith: #(InstanceOfTemplate Rendered Transform Colliding) do: [:instanceOfTemplate :rendered :transform :colliding | 
		instanceOfTemplate template: 'Platform'.
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png').
		transform bounds: ((768@960) corner: 832 , 1024).
		colliding ignoreList: ((OrderedCollection new)); group: nil];
	
		addTemplate: (ECSTemplate new
	name: 'Platform'; addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Tiles/dirtMid.png'));  addComponent: (Transform new bounds: (0 , 0 corner: 64 , 64));  addComponent: (Colliding new ignoreList: ((OrderedCollection new));  group: nil));
	
		addTemplate: (ECSTemplate new
	name: 'Enemy'; addComponent: (Transform new bounds: (45164.62300000157 , 39870.43085919528 corner: 45236.62300000158 , 39934.43085919528));  addComponent: (Colliding new ignoreList: ((OrderedCollection new));  group: nil);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSImageAsset of: #platformer_base at: 'Enemies/flyFly2.png'));  addComponent: (Physics new velocity: 0 , 0;  friction: 0);  addComponent: (DemoAIMovement new switchDirectionTimeout: 0;  moveLeft: false));
	yourself