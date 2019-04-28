as yet unclassified
tick: aWorld

	self setUpViewport.
	
	aWorld query: {Transform. Rendered} do:	[:components | | color bounds |
		bounds := components first bounds.
		color := components second color.
		ogl
			glBegin: GLQuads;
			glColor3f: color red with: color green with: color blue;
			glVertex2f: bounds left with: bounds top;
			glVertex2f: bounds right with: bounds top;
			glVertex2f: bounds right with: bounds bottom;
			glVertex2f: bounds left with: bounds bottom;
			glEnd].
	
	self tearDownViewport