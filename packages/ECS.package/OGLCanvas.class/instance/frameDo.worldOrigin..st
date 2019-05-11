accessing
frameDo: aBlock worldOrigin: aPoint

	| ret |
	self setUpViewport.
	
	ogl glTranslatef: aPoint x negated with: aPoint y negated with: 0.0.
	worldOrigin := aPoint.
	ret := aBlock value.
	
	self tearDownViewport.
	^ ret