as yet unclassified
tick: aWorld

	| offset |
	self setUpViewport.
	
	aWorld query: {Transform. Rendered} do: [:components | | color bounds |
		bounds := components first bounds.
		color := components second color.
		
		ogl glColor3f: color red with: color green with: color blue.
		ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
		ogl glTexCoordPointer: 2 with: GLFloat with: 0 with: texCoords.
		ogl glEnableClientState: GLVertexArray.
		ogl glEnableClientState: GLTextureCoordArray.
		
		ogl glPushMatrix.
		ogl glTranslatef: bounds origin x with: bounds origin y with: 0.0.
		ogl glScalef: bounds width with: bounds height with: 1.0.
		ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
		ogl glPopMatrix.
		
		ogl glDisableClientState: GLTextureCoordArray.
		ogl glDisableClientState: GLVertexArray].
	
	offset := font height.
	
	"self renderOutlineOf: aWorld."
	self renderFramesPerSecondOf: aWorld.
	
	self tearDownViewport