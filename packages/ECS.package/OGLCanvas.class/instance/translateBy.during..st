drawing-support
translateBy: aPoint during: aBlock
	
	ogl glPushMatrix.
	ogl glTranslatef: aPoint x with: aPoint y with: 0.0.
	aBlock value: (self copyOffset: aPoint).
	ogl glPopMatrix