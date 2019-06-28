*ECS-OpenGL
glGetProgramInfoLog: obj with: maxLength with: length with: infoLog
	<apicall: void 'glGetProgramInfoLog' (ulong long long* char*) module: '#openGLLibraryName'>
	^self externalCallFailed