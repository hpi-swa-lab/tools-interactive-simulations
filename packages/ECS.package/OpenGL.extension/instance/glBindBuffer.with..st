*ECS-OpenGL
glBindBuffer: target with: buffer
	<apicall: void 'glBindBuffer' (long ulong) module: '#openGLLibraryName'>
	^self externalCallFailed