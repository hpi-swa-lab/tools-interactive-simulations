*ECS-OpenGL
glGetProgramiv: obj with: pname with: params
	<apicall: void 'glGetProgramiv' (ulong long long*) module: '#openGLLibraryName'>
	^self externalCallFailed