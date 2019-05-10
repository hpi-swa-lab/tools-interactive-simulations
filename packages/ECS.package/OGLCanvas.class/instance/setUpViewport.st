accessing
setUpViewport

	ogl
		beginFrame;
		glClearColor: 0.0 with: 0.0 with: 0.0 with: 1.0;
		glClear: GLColorBufferBit.
	
	ogl glMatrixMode: GLProjection.
	ogl glPushMatrix.
	ogl glLoadIdentity.
	ogl glMatrixMode: GLModelview.
	ogl glPushMatrix.
	ogl glLoadIdentity.
	ogl glTranslated: -1 with: 1 with: 0.0.
	ogl glScaled: (2.0 / ogl extent x) with: (-2.0 / ogl extent y) with: 1.0.
	
	ogl
		glDisable: GLDepthTest;
		glDisable: GLLighting;
		glEnable: GLBlend;
		glEnable: GLScissorTest;
		glEnable: GLLineSmooth;
		glBlendFunc: GLSrcAlpha with: GLOneMinusSrcAlpha.
	
	ogl glViewport: 0 with: 0 with: ogl extent x with: ogl extent y.
	self scissorRect: clipRect