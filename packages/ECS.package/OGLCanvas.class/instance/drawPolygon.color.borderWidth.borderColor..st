accessing
drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc

	self flag: #todo. "border"
	ogl glBegin: GLPolygon.
	ogl glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
	vertices do: [:vertex | ogl glVertex3f: vertex x with: vertex y with: 0.0].
	ogl glEnd