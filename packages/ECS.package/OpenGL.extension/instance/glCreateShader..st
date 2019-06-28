*ECS-OpenGL
glCreateShader: shaderType
	<apicall: ulong 'glCreateShader' (long) module: '#openGLLibraryName'>
	^self externalCallFailed