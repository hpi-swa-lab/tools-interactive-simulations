accessing
frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor

	ogl glColor3f: fillColor red with: fillColor green with: fillColor blue.
	ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
	ogl glTexCoordPointer: 2 with: GLFloat with: 0 with: texCoords.
	ogl glEnableClientState: GLVertexArray.
	ogl glEnableClientState: GLTextureCoordArray.
	
	ogl glPushMatrix.
	ogl glTranslatef: r origin x with: r origin y with: 0.0.
	ogl glScalef: r width with: r height with: 1.0.
	ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
	ogl glPopMatrix.
	
	ogl glDisableClientState: GLTextureCoordArray.
	ogl glDisableClientState: GLVertexArray