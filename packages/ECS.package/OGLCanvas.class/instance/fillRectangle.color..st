accessing
fillRectangle: r color: fillColor

	ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
	ogl glEnableClientState: GLVertexArray.
	
	fillColor isTransparent ifFalse: [
		ogl glPushMatrix.
		ogl glTranslatef: r origin x asFloat with: r origin y asFloat with: 0.0.
		ogl glScalef: r width asFloat with: r height asFloat with: 1.0.
		ogl glColor4f: fillColor red with: fillColor green with: fillColor blue with: fillColor alpha.
		ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
		ogl glPopMatrix].
	
	ogl glDisableClientState: GLVertexArray