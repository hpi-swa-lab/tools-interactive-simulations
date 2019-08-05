initialize-release
initialize

	super initialize.
	
	pipelines := OrderedCollection new.
	templates := OrderedCollection new.
	views := OrderedCollection new.
	stepTime := 0.
	accesses := 0.
	queryLocalAccesses := 0.
	pausedAfterError := false.
	
	self resetEntityList.
	
	components at: #id put: IndexStorage new.
	
	running := false