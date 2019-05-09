accessing
ogl: anOpenGLContext

	ogl := anOpenGLContext.
	font := ECSFont from: TextStyle defaultFont ogl: ogl.
	vertices := #(0.0 1.0  1.0 1.0  0.0 0.0  1.0 0.0) as: FloatArray.
	texCoords := #(0.0 1.0  1.0 1.0  0.0 0.0  1.0 0.0) as: FloatArray