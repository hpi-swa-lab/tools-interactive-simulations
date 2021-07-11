as yet unclassified
newWith: anId in: aUniverse

	^ self new 
		id: anId;
		title: anId class asString;
		universe: aUniverse;
		addMorphBack: (ECSMethodBlock newWith: anId class);
		toggleCollapsed