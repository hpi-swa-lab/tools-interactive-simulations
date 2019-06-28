shader
checkGLError

	| error |
	self flag: #fixme. " should loop until it GL_NO_ERROR is returned "
	error := ogl glGetError.
	
	error ~= GLNoError ifTrue: [
		self error: (error caseOf: {
			[GLInvalidValue] -> ['invalid value'].
			[GLInvalidEnum] -> ['invalid enum'].
			[GLInvalidOperation] -> ['invalid operation'].
			[GLStackOverflow] -> ['stack overflow'].
			[GLStackUnderflow] -> ['stack underflow'].
			[GLOutOfMemory] -> ['out of memory'].
			"GL_INVALID_FRAMEBUFFER_OPERATION 0x0506 [] -> ['invalid enum']."
			"[GLContextLost] 0x0507 -> ['invalid enum']."
			"[GL_TABLE_TOO_LARGE] 0x8031 -> ['out of memory']."
		} otherwise: ['unknown error'])]