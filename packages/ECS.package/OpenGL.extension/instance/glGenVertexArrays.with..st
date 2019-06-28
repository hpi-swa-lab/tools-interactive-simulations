*ECS-OpenGL
glGenVertexArrays: n with: buffers
	<apicall: void 'glGenVertexArrays' (long ulong*) module: '#openGLLibraryName'>
	^self externalCallFailed