accessing
frameDo: aBlock worldOrigin: aPoint

	self setUpViewport.
	
	ogl glTranslatef: aPoint x negated with: aPoint y negated with: 0.0.
	worldOrigin := aPoint.
	aBlock value.
	
	self tearDownViewport