initialize-release
initialize

	super initialize.
	
	self register.
	self universe when: #unpauseAfterError send: #resumeAfterDrawError to: self.
	self guessDrawPipeline.
	
	self universe views addIfNotPresent: self