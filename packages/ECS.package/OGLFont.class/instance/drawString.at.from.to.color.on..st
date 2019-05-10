as yet unclassified
drawString: aString at: aVector from: firstIndex to: lastIndex color: aColor on: ogl

	| x |
	x := 0.
	firstIndex to: lastIndex do: [:index | | texture |
		texture := textureHandles at: (aString at: index) asInteger + 1.
		ogl installTexture: texture.
		ogl enableTexture: texture.
		
		ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
		ogl glTexCoordPointer: 2 with: GLFloat with: 0 with: texCoords.
		ogl glEnableClientState: GLVertexArray.
		ogl glEnableClientState: GLTextureCoordArray.
		
		ogl glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
		
		ogl glPushMatrix.
		ogl glTranslatef: aVector x + x with: aVector y with: 0.0.
		ogl glScalef: texture textureForm width with: texture textureForm height with: 1.
		ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
		ogl glPopMatrix.
		
		ogl glDisableClientState: GLTextureCoordArray.
		ogl glDisableClientState: GLVertexArray.
		ogl disableTexture: texture.
		
		x := x + texture textureForm width]