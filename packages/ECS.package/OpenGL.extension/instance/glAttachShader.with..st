*ECS-OpenGL
glAttachShader: containerObj with: obj
	<apicall: void 'glAttachShader' (ulong ulong) module: '#openGLLibraryName'>
	^self externalCallFailed