ogl-update
updateBuffer

	ogl ifNotNil: [ogl bufferRect: self bounds].
	screenSizeResource size: self extent