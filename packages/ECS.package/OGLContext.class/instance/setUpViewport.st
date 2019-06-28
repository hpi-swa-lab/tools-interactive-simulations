initialize-release
setUpViewport

	ogl glViewport: 0 with: 0 with: ogl extent x with: ogl extent y.
	
	ogl
		beginFrame;
		glClearColor: 0.0 with: 1.0 with: 0.3 with: 1.0;
		glClear: GLColorBufferBit.
	
	projectionMatrix := Matrix4x4 new setOrtho: (Rectangle left: 0 right: ogl extent x top: 0 bottom: ogl extent y) near: -1 far: 1.
	
	"ogl
		glDisable: GLDepthTest;
		glDisable: GLLighting;
		glDisable: GLCullFace;
		
		glEnable: GLBlend;
		glEnable: GLScissorTest;
		glEnable: GLLineSmooth;
		glBlendFunc: GLSrcAlpha with: GLOneMinusSrcAlpha."