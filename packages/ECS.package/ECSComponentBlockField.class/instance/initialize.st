initialization
initialize

	super initialize.

	self
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		changeTableLayout;
		cellGap: 4;
		listDirection: #leftToRight;
		canDrag: false