shader
createProgramVertex: vertexShader fragment: fragmentShader

	| program success |
	program := ogl glCreateProgram.
	ogl glAttachShader: program with: vertexShader.
	ogl glAttachShader: program with: fragmentShader.
	ogl glLinkProgram: program.
	
	success := IntegerArray new: 1.
	ogl glGetProgramiv: program with: 16r8B82 with: success. "GL_LINK_STATUS".
	success first ~= 1 ifTrue: [ | log logString returnedLength |
		returnedLength := IntegerArray new: 1.
		log := ExternalAddress gcallocate: 500.
		ogl glGetProgramInfoLog: program with: 500 with: returnedLength with: log.
		logString := (ExternalData fromHandle: log type: ExternalType char asPointerType) fromCString.
		self error: logString].
	
	ogl glDeleteShader: vertexShader.
	ogl glDeleteShader: fragmentShader.
	
	self checkGLError.
	
	^ program