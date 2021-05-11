as yet unclassified
newOf: anECSType

	| container |
	container := self new.
	
	container
		type: anECSType;
		changeTableLayout;
		extent: 350 @ 400;
		layoutInset: 8;
		cellGap: 8;
		addMorphBack: (SBStringMorph new
			contents: (container type == ECSComponentBlock
				ifTrue: ['Components']
				ifFalse: ['Entities']);
			hResizing: #spaceFill);
		addMorphBack: SBRow new;
		addMorphBack: container type new.
	
	^ container