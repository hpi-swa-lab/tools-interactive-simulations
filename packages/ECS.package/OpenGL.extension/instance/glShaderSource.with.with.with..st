*ECS-OpenGL
glShaderSource: shaderObj with: count with: string with: length
	<apicall: void 'glShaderSource' (ulong long OGLOneElementCharArray* long*) module: '#openGLLibraryName'>
	^self externalCallFailed