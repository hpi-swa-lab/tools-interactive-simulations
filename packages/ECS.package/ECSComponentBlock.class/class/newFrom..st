as yet unclassified
newFrom: aComponent

	| component |
	
	component :=  self new
		title: aComponent class asString;
		id: aComponent class;
		component: aComponent.
	aComponent class fields do: [:field |
		component addMorphBack: (ECSComponentBlockField newWith: field of: (aComponent class))].
	
	 ^ component