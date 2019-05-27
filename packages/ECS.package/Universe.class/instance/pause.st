pipelines
pause

	morph stopSteppingSelector: #tick.
	running := false.
	self changed: #isPaused