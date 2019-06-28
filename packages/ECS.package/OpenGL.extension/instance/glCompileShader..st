*ECS-OpenGL
glCompileShader: shaderObj
	<apicall: void 'glCompileShader' (ulong) module: '#openGLLibraryName'>
	^self externalCallFailed