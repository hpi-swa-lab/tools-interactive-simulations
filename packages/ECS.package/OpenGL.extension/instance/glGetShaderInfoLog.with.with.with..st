*ECS-OpenGL
glGetShaderInfoLog: obj with: maxLength with: length with: infoLog
	<apicall: void 'glGetShaderInfoLog' (ulong long long* char*) module: '#openGLLibraryName'>
	^self externalCallFailed