drawing
line: aPoint to: aPoint2 width: anInteger color: aColor 

	ogl glLineWidth: anInteger.
	ogl glBegin: GLLines.
	ogl glColor3f: aColor red with: aColor green with: aColor blue.
	ogl glVertex3f: aPoint x with: aPoint y with: 0.0.
	ogl glVertex3f: aPoint2 x with: aPoint2 y with: 0.0.
	ogl glEnd.