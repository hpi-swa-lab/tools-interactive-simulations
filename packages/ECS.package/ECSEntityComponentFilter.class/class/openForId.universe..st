as yet unclassified
openForId: anEntityId universe: aUniverse

	| filter |
	filter := (ECSEntityComponentFilter newFor: aUniverse)
		queryString: 'self queryById: ', anEntityId;
		updateList;
		expandFirstResult;
		openDetached