ogl-update
updateBuffer

	ogl ifNotNil: [ogl bufferRect: self bounds].
	systemUniverse query: {ScreenSize} do: [:screenSize | screenSize size: self extent]