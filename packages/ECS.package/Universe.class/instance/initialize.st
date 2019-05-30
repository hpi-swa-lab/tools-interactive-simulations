initialize-release
initialize

	super initialize.
	
	pipelines := OrderedCollection new.
	freeIndexList := OrderedCollection new.
	components := Dictionary new.
	drawingBlocks := OrderedCollection new.
	templates := OrderedCollection new.
	
	components at: #id put: IndexStorage new.
	
	maxEntityIndex := 0.
	
	running := false