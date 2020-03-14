button-functionality
removeEntity

	| shouldDoThis |
	shouldDoThis := "UIManager default confirm: 'Really remove entity? (not undoable)'."true.
	
	shouldDoThis ifTrue: [self universe autoPersistRemove: id]