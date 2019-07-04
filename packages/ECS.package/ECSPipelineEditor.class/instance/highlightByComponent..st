ui-building-updating-logic
highlightByComponent: aClass

	highlightedClass := aClass.
	self highlightedClass ifNil: [^ self].

	list submorphsDo: [:systemMorphWrapper | | systemMorph |
		systemMorph := systemMorphWrapper firstSubmorph.
		((systemMorph otherProperties at: #ecsSystem) class usesComponentClass: aClass)
			ifTrue: [systemMorph headerColor: Color cantaloupe]
			ifFalse: [systemMorph resetHeaderColor]]