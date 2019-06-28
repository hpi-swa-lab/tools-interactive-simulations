*ECS-OpenGL
glGenBuffers: n with: buffers
	<apicall: void 'glGenBuffers' (long ulong*) module: '#openGLLibraryName'>
	^self externalCallFailed