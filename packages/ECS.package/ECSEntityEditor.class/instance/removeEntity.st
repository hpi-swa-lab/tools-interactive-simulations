button-functionality
removeEntity

	| shouldDoThis |
	shouldDoThis := UIManager default confirm: 'Really remove entity? (not undoable)'.
	
	shouldDoThis ifTrue: [self universe remove: id]