as yet unclassified
drawString: aString at: aVector from: firstIndex to: lastIndex color: aColor on: ogl

	| texture |
	ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
	ogl glTexCoordPointer: 2 with: GLFloat with: 0 with: texCoords.
	ogl glEnableClientState: GLVertexArray.
	ogl glEnableClientState: GLTextureCoordArray.
	
	ogl glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
	
	ogl glPushMatrix.
	ogl glTranslatef: aVector x with: aVector y with: 0.0.
	
	firstIndex to: lastIndex do: [:index |
		self flag: #todo. " use a texture atlas "
		texture := textureHandles at: (aString at: index) asInteger + 1.
		ogl installTexture: texture.
		ogl enableTexture: texture.
		
		ogl glPushMatrix.
		ogl glScalef: texture textureForm width with: texture textureForm height with: 1.
		ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
		
		ogl glPopMatrix.
		
		ogl glTranslatef: texture textureForm width with: 0.0 with: 0.0].
	
	texture ifNotNil: [ogl disableTexture: texture].
	
	ogl glPopMatrix.
	ogl glDisableClientState: GLTextureCoordArray.
	ogl glDisableClientState: GLVertexArray