private
image: aForm at: aPoint sourceRect: aRectangle rule: anInteger 
	
	| texture |
	self flag: #todo. "apply sourceRect through vertext coords"
	texture := OGLTexture new form: aForm.
	ogl installTexture: texture.
	ogl enableTexture: texture.
	
	ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
	ogl glTexCoordPointer: 2 with: GLFloat with: 0 with: texCoords.
	ogl glEnableClientState: GLVertexArray.
	ogl glEnableClientState: GLTextureCoordArray.
	
	ogl glColor3f: 1.0 with: 1.0 with: 1.0.
	
	ogl glPushMatrix.
	ogl glTranslatef: aPoint x with: aPoint y with: 0.0.
	ogl glScalef: texture textureForm width with: texture textureForm height with: 1.
	ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
	ogl glPopMatrix.
	
	ogl glDisableClientState: GLTextureCoordArray.
	ogl glDisableClientState: GLVertexArray.
	ogl disableTexture: texture.