as yet unclassified
intoWorld: aWorld

	super intoWorld: aWorld.
	ogl := OpenGL newIn: self bounds.
	canvas := OGLCanvas on: ogl.
	screenSizeResource size: self extent.
	
	systemWorld morph: self; setUp