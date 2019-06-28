*ECS-OpenGL
glLinkProgram: programObj
	<apicall: void 'glLinkProgram' (ulong) module: '#openGLLibraryName'>
	^self externalCallFailed