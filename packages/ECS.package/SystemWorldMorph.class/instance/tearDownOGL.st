ogl-setup
tearDownOGL

	(ogl notNil and: [ogl ~= #glSuspended]) ifTrue: [ogl destroy]