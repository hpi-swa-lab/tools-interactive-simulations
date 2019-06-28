initialize-release
createQuadVAO

	| vao vbo |
	vao := self createVAO.
	ogl glBindVertexArray: vao.
	
	vbo := self createQuadVBO.
	shader := self createDefaultShader.
	ogl glUseProgram: shader.
	self checkGLError.
	
	ogl glVertexAttribPointer: 0 with: 2 with: GLFloat with: GLFalse with: 2 * 4 with: nil.
	ogl glEnableVertexAttribArray: 0.
	self checkGLError.
	
	ogl glBindBuffer: GLArrayBuffer with: 0.
	ogl glBindVertexArray: 0.
	
	^ vao