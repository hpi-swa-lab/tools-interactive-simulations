initialization
initialize

	super initialize.
	
	labels := #().
	
	self
		model: self;
		getListSelector: #labels;
		keystrokeActionSelector: #keyStrokeAction:;
		filterableList: true;
		initForKeystrokes;
		doubleClickSelector: #onDoubleClick;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		autoDeselect: false.
	
	selectedIndex := 0.
	getIndexSelector := #selectedIndex.
	setIndexSelector := #selectedIndex: