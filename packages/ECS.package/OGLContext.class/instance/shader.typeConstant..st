shader
shader: aString typeConstant: aNumber

	| ptr status str strings shader |
	shader := ogl glCreateShader: aNumber.
	
	ptr := ExternalAddress gcallocate: aString size + 1.
	1 to: aString size do: [:i | ptr byteAt: i put: (aString at: i) asInteger].
	ptr byteAt: aString size + 1 put: 0.
	str := ExternalData fromHandle: ptr type: ExternalType char asPointerType.
	strings := OGLOneElementCharArray new element: str.
	
	ogl glShaderSource: shader with: 1 with: (strings) with: nil.
	ogl glCompileShader: shader.
	
	status := IntegerArray new: 1.
	ogl glGetShaderiv: shader with: 16r8B81 with: status. "GL_COMPILE_STATUS"
	status first ~= 1 ifTrue: [ | log logString returnedLength |
		returnedLength := IntegerArray new: 1.
		log := ExternalAddress gcallocate: 500.
		ogl glGetShaderInfoLog: shader with: 500 with: returnedLength with: log.
		logString := (ExternalData fromHandle: log type: ExternalType char asPointerType) fromCString.
		self error: logString].
	^ shader