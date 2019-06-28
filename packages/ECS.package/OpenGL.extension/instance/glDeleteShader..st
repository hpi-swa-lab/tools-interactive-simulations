*ECS-OpenGL
glDeleteShader: obj
	<apicall: void 'glDeleteShader' (ulong) module: '#openGLLibraryName'>
	^self externalCallFailed