drawing-support
transformBy: aTransform clippingTo: aRectangle during: aBlock smoothing: anInteger 
	
	ogl glPushMatrix.
	ogl glTranslatef: aTransform offset x negated with: aTransform offset y negated with: 0.0.
	ogl glScalef: aTransform scale asPoint x with: aTransform scale asPoint y with: 1.0.
	ogl glRotatef: aTransform angle with: 0.0 with: 1.0 with: 0.0.
	
	self scissorRect: (aRectangle translateBy: (origin + worldOrigin) negated).
	aBlock value: (self copyOffset: aTransform offset negated clipRect: aRectangle).
	self scissorRect: clipRect.
	
	ogl glPopMatrix