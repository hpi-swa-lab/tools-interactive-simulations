*ECS-OpenGL
glEnableVertexAttribArray: index
	<apicall: void 'glEnableVertexAttribArray' (ulong) module: '#openGLLibraryName'>
	^self externalCallFailed