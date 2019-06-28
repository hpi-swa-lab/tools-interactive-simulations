initialize-release
createQuadVBO

	| vbo vboPtr |
	vboPtr := IntegerArray new: 1.
	ogl glGenBuffers: 1 with: vboPtr.
	self checkGLError.
	vbo := vboPtr first.
	
	ogl glBindBuffer: 16r8892 with: vbo. "GL_ARRAY_BUFFER"
	self checkGLError.
	
	ogl
		glBufferData: 16r8892
		with: 32
		with: (#(0.0 1.0  1.0 1.0  0.0 0.0  1.0 0.0) as: FloatArray)
		with: 16r88E4. "GL_STATIC_DRAW"
	self checkGLError.
	
	^ vbo