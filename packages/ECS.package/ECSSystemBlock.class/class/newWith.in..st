as yet unclassified
newWith: anId in: aUniverse

	^ self new 
		id: anId;
		title: anId class asString;
		universe: aUniverse;
		addMorphBack: (anId class >> #tick: "ECSMethodBlock newWith: anId class") asSandblock;
		toggleCollapsed