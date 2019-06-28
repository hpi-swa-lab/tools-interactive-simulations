shader
translateByX: x y: y during: aBlock

	modelViewStack pushMatrix.
	modelViewStack translateX: x y: y z: 0.
	aBlock value: self.
	modelViewStack popMatrix