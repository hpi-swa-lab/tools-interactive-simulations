as yet unclassified
newFrom: aComponent inEntity: anEntityId in: aUniverse

	| component |
	
	component := self new
		title: aComponent class asString;
		id: aComponent class;
		component: aComponent;
		entityId: anEntityId;
		universe: aUniverse.
	aComponent class fields do: [:field |
		component addMorphBack: (ECSComponentBlockField newWith: field of: (aComponent class))].
	
	 ^ component