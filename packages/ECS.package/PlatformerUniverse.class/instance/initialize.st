as yet unclassified
initialize

	super initialize.
	self
	stepTime: 0;
	register: (Pipeline new
		title: 'Render';
		runContinuously: false;
		register: PlatRenderSystem new);
	register: (Pipeline new
		title: 'Loop';
		runContinuously: true;
		register: PlatInputSystem new;
		register: PlatPhysicsSystem new;
		register: PlatPlacerSystem new);
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (116@134); isCurrent: false; mousePosition: 694 , 700; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(PlatPlayer Rendered PlatPhysics PlatVitals OnebitPosition InstanceOfTemplate) do: [:platPlayer :rendered :platPhysics :platVitals :onebitPosition :instanceOfTemplate | 
		platPlayer .
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSTileMapAsset of: #onebit at: (25 , 7 corner: 41 , 23) scale: 2 rotation: 0).
		platPhysics velocity: 0 , 0.
		platVitals health: 3; mana: 3; stamina: 3; maxHealth: 3; maxMana: 3; maxStamina: 3.
		onebitPosition x: 9.099999999999985; y: 8.999999999999922.
		instanceOfTemplate template: 'Player'];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (116@134); isCurrent: false; mousePosition: 488 , 706; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	spawnNewWith: #(PlatColliding Rendered OnebitPosition InstanceOfTemplate) do: [:platColliding :rendered :onebitPosition :instanceOfTemplate | 
		platColliding .
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSTileMapAsset of: #onebit at: (17 , 19 corner: 33 , 35) scale: 2 rotation: 0).
		onebitPosition x: 10; y: 20.
		instanceOfTemplate template: 'Platform'];
	spawnNewWith: #(PlatColliding Rendered OnebitPosition InstanceOfTemplate) do: [:platColliding :rendered :onebitPosition :instanceOfTemplate | 
		platColliding .
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSTileMapAsset of: #onebit at: (17 , 19 corner: 33 , 35) scale: 2 rotation: 0).
		onebitPosition x: 8; y: 20.
		instanceOfTemplate template: 'Platform'];
	spawnNewWith: #(PlatColliding Rendered OnebitPosition InstanceOfTemplate) do: [:platColliding :rendered :onebitPosition :instanceOfTemplate | 
		platColliding .
		rendered color: (ECSColor rgba: 16rFF000000); form: (ECSTileMapAsset of: #onebit at: (17 , 19 corner: 33 , 35) scale: 2 rotation: 0).
		onebitPosition x: 9; y: 20.
		instanceOfTemplate template: 'Platform'];
	spawnNewWith: #(UniverseView) do: [:universeView | 
		universeView size: (396@584); isCurrent: false; mousePosition: 368 , 421; leftJustUp: false; leftJustDown: false; leftDown: false; wheelDelta: 0 , 0; rightJustUp: false; rightJustDown: false; rightDown: false; mousePositionDelta: 0 , 0];
	
		addTemplate: (ECSTemplate new
	name: 'Player'; addComponent: (PlatVitals new health: 3;  mana: 3;  stamina: 3;  maxHealth: 3;  maxMana: 3;  maxStamina: 3);  addComponent: (PlatPhysics new velocity: 0 , 0);  addComponent: (OnebitPosition new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (25 , 7 corner: 41 , 23) scale: 2 rotation: 0));  addComponent: (PlatPlayer new));
	
		addTemplate: (ECSTemplate new
	name: 'Platform'; addComponent: (PlatColliding new);  addComponent: (OnebitPosition new);  addComponent: (Rendered new color: (ECSColor rgba: 16rFF000000);  form: (ECSTileMapAsset of: #onebit at: (17 , 19 corner: 33 , 35) scale: 2 rotation: 0)));
	yourself