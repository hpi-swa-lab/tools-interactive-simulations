initialize-release
initialize

	super initialize.
	
	pipelines := OrderedCollection new.
	drawingBlocks := OrderedCollection new.
	templates := OrderedCollection new.
	
	self resetEntityList.
	
	components at: #id put: IndexStorage new.
	
	running := false