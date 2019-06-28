*ECS-OpenGL
glBufferData: target with: size with: data with: usage
	<apicall: void 'glBufferData' (long long void* long) module: '#openGLLibraryName'>
	^self externalCallFailed