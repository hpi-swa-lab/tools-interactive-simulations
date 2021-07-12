as yet unclassified
newWith: anId in: aUniverse

	^ self new
		id: anId;
		title: anId class asString;
		universe: aUniverse;
		addMorphBack: ((anId class >> #tick:) asSandblock hResizing: #spaceFill);
		toggleCollapsed