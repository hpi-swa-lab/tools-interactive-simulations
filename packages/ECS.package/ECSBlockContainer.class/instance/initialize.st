initialization
initialize

	super initialize.
	self start.

	self
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: (SBIcon iconPlus on: #click send: #addElement to: self);
			addMorphBack: (SBStringMorph new
				contents: self type title;
				hResizing: #spaceFill));
		addMorphBack: (scroll := ScrollPane new
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			color: Color transparent;
			borderColor: nil).
			
	scroll scroller
		changeTableLayout;
		cellGap: 8;
		layoutInset: (Rectangle left: 0 right: 4 top: 0 bottom: 0);
		cellPositioning: #topLeft.

	self initializeElements