initialize-release
initialize

	super initialize.
	
	hadReport := false.
	values := ECSCyclicList new size: self initialBufferSize