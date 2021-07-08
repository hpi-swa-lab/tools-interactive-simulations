as yet unclassified
newWith: anId in: aUniverse

	| component |
	
	component :=  self new
		title: anId asString;
		id: anId;
		component: nil.
	anId fields do: [:field |
		component addMorphBack: (ECSComponentBlockField newWith: field of: anId)].
	
	 ^ component