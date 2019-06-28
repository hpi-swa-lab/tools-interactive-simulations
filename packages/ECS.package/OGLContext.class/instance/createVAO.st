initialize-release
createVAO

	| vao vaoPtr |
	vaoPtr := IntegerArray new: 1.
	ogl glGenVertexArrays: 1 with: vaoPtr.
	vao := vaoPtr first.
	self checkGLError.
	^ vao