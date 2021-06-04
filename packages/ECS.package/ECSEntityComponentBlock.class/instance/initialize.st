as yet unclassified
initialize

	super initialize.

	universe := JetpackUniverse new.
	"universe when: #postTick send: #updateList to: self."
	entities := ECSBlockContainer newOf: ECSEntityBlock.
	components := ECSBlockContainer newOf: ECSComponentBlock.
	systems := ECSBlockContainer newOf: ECSSystemBlock.

	self	changeTableLayout;
		extent: 1200 @ 600;
		attachDecorator: SBResizableDecorator new;
		hResizing: #rigid; 
		vResizing: #rigid;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBRow new
			addMorphBack: (SBIcon iconSave on: #click send: #saveSnapshot to: self));
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
				addMorphBack: ((ECSViewBlock newFor: universe) hResizing: #spaceFill; vResizing: #spaceFill);
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

	self updateList