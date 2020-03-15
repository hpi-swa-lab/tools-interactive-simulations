as yet unclassified
update: anAspect

	anAspect = activeWhen ifTrue: [self color: ((activeOwner perform: activeWhen) ifTrue: [Color green darker] ifFalse: [Color lightGray])]