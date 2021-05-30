as yet unclassified
initialize

	super initialize.
	
	self
		changeTableLayout;
		extent: 350 @ 400;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: (SBIcon iconPlus on: #click send: #addBlock to: self);
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
		layoutInset: 8;
		cellPositioning: #topLeft.

