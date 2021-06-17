as yet unclassified
newWith: anId in: aUniverse

	^ self new 
		id: anId;
		title: anId asString;
		addMorphBack: (ECSMethodBlock newWith: anId);
		toggleCollapsed