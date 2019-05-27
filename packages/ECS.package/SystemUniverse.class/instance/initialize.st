initialize-release
initialize

	super initialize.
	
	systems := OrderedCollection new.
	templates := OrderedCollection new.
	freeIndexList := OrderedCollection new.
	components := Dictionary new.
	drawingBlocks := OrderedCollection new.
	
	components at: #id put: IndexStorage new.
	
	maxEntityIndex := 0.
	
	running := false