as yet unclassified
initialize

	super initialize.

	universe := NewUniverse new.
	entities := ECSBlockContainer newOf: ECSEntityBlock with: self universe.
	components := ECSBlockContainer newOf: ECSComponentBlock with: self universe.
	systems := ECSBlockContainer newOf: ECSSystemBlock with: self universe.
	playIcon := SBIcon iconPlay on: #click send: #togglePaused to: self.

	self	
		changeTableLayout;
		extent: 1320 @ 600;
		minimumExtent: 1320 @ 600;
		attachDecorator: SBResizableDecorator new;
		hResizing: #rigid; 
		vResizing: #rigid;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			cellGap: 8;
			addMorphBack: (SBIcon iconSave on: #click send: #saveSnapshot to: self);
			addMorphBack: playIcon);
		addMorphBack: (SBRow new
			changeTableLayout;
			hResizing: #spaceFill; 
			vResizing: #spaceFill;
			cellGap: 8;
			addMorphBack: (SBColumn new
				changeTableLayout;
				hResizing: #spaceFill; 
				vResizing: #spaceFill;
				cellGap: 8;
				addMorphBack: ((ECSViewBlock newFor: universe) 
					hResizing: #spaceFill; 
					vResizing: #spaceFill);
				addMorphBack: (SBRow new
					changeTableLayout;
					hResizing: #spaceFill;
					vResizing: #spaceFill;
					cellGap: 8;
					addMorphBack: entities;
					addMorphBack: components));
			addMorphBack: (systems
				hResizing: #spaceFill; 
				vResizing: #spaceFill)).

	self togglePaused