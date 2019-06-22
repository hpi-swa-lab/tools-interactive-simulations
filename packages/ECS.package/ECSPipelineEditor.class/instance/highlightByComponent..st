ui-building-updating-logic
highlightByComponent: aClass

	list submorphsDo: [:systemMorphWrapper | | systemMorph |
		systemMorph := systemMorphWrapper firstSubmorph.
		((systemMorph otherProperties at: #ecsSystem) class usesComponentClass: aClass)
			ifTrue: [systemMorph headerColor: Color cantaloupe]
			ifFalse: [systemMorph resetHeaderColor]]