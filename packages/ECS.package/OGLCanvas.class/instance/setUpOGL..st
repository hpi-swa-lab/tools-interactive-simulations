private
setUpOGL: aRectangle

	ogl := OpenGL newIn: aRectangle flags: 1 + 2 + 4.
	fonts := Dictionary new.
	vertices := #(0.0 1.0  1.0 1.0  0.0 0.0  1.0 0.0) as: FloatArray.
	texCoords := #(0.0 1.0  1.0 1.0  0.0 0.0  1.0 0.0) as: FloatArray