accessing
frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor

	| inner |
	ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
	ogl glEnableClientState: GLVertexArray.
	
	borderColor isTransparent ifFalse: [ | rect |
		rect := r insetBy: borderWidth / 2.0.
		ogl glPushMatrix.
		ogl glTranslatef: rect origin x with: rect origin y with: 0.0.
		"ogl glScalef: rect width with: rect height with: 1.0."
		ogl glColor4f: borderColor red with: borderColor green with: borderColor blue with: borderColor alpha.
		ogl glLineWidth: borderWidth.
		ogl glBegin: GLLineLoop.
		ogl glVertex3f: 0.0 with: 0.0 with: 0.0.
		ogl glVertex3f: rect width with: 0.0 with: 0.0.
		ogl glVertex3f: rect width with: rect height with: 0.0.
		ogl glVertex3f: 0.0 with: rect height with: 0.0.
		ogl glEnd.
		"ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2."
		ogl glPopMatrix].
	
	fillColor isTransparent ifFalse: [
		inner := r insetBy: borderWidth.
		ogl glPushMatrix.
		ogl glTranslatef: inner origin x with: inner origin y with: 0.0.
		ogl glScalef: inner width with: inner height with: 1.0.
		ogl glColor4f: fillColor red with: fillColor green with: fillColor blue with: fillColor alpha.
		ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
		ogl glPopMatrix].
	
	ogl glDisableClientState: GLVertexArray