*ECS-OpenGL
glGetUniformLocation: programObj with: name
	<apicall: long 'glGetUniformLocation' (ulong char*) module: '#openGLLibraryName'>
	^self externalCallFailed