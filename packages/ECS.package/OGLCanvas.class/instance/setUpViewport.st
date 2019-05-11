accessing
setUpViewport

	ogl
		beginFrame;
		glClearColor: 0.0 with: 0.0 with: 0.0 with: 1.0;
		glClear: GLColorBufferBit.
	
	ogl glLoadIdentity.
	ogl glOrtho: 0 with: ogl extent x with: ogl extent y with: 0 with: -1 with: 1.
	
	ogl
		glDisable: GLDepthTest;
		glDisable: GLLighting;
		glDisable: GLCullFace;
		
		glEnable: GLBlend;
		glEnable: GLScissorTest;
		glEnable: GLLineSmooth;
		glBlendFunc: GLSrcAlpha with: GLOneMinusSrcAlpha.
	
	ogl glViewport: 0 with: 0 with: ogl extent x with: ogl extent y.
	self scissorRect: clipRect