button-functionality
changeUniverse

	| universeClass universeClasses |
	universeClasses := OrderedCollection new
		add: Universe;
		addAll: Universe subclasses copy;
		yourself.

	universeClass := UIManager default chooseFrom: universeClasses values: universeClasses.
	universeClass ifNil: [^ self].
	
	self universe: universeClass new