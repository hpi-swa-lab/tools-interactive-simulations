*ECS-OpenGL
glGetShaderiv: obj with: pname with: params
	<apicall: void 'glGetShaderiv' (ulong long long*) module: '#openGLLibraryName'>
	^self externalCallFailed