initialize-release
setUpOGL: aRectangle

	ogl := OpenGL newIn: aRectangle flags: 1 + 2 + 4.
	fonts := Dictionary new.
	
	vao := self createQuadVAO.
	shader := self createDefaultShader.
	ogl glUseProgram: shader.
	
	self checkGLError