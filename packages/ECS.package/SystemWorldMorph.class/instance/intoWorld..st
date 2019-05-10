as yet unclassified
intoWorld: aWorld

	super intoWorld: aWorld.
	ogl := OpenGL newIn: self bounds flags: 1 + 2+ 4.
	canvas := OGLCanvas on: ogl.
	screenSizeResource size: self extent.
	
	systemWorld ifNotNil: [:w | w morph: self; setUp]