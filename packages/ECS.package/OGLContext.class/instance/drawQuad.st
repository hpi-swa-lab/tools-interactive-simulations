initialize-release
drawQuad

	ogl glUseProgram: shader.
	ogl glBindVertexArray: vao.
	ogl glDrawArrays: GLTriangleStrip with: 0 with: 4.
	self checkGLError