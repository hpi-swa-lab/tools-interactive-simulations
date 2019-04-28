as yet unclassified
tick: componentsList resources: resourcesList

	self setUpViewport.
	
	componentsList do: [:components | | color position size |
		position := components first position.
		color := components second color.
		size := components second size.
		ogl
			glBegin: GLQuads;
			glColor3f: color red with: color green with: color blue;
			glVertex2f: position x with: position y;
			glVertex2f: size x + position x with: position y;
			glVertex2f: size x + position x with: size y + position y;
			glVertex2f: position x with: size y + position y;
			glEnd].
	
	self tearDownViewport