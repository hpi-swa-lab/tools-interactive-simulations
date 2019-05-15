ogl-setup
setUpOGL

	ogl := OpenGL newIn: self bounds flags: 1 + 2 + 4.
	canvas := OGLCanvas on: ogl