drawing
tearDownOGL

	(ogl notNil and: [ogl ~= #glSuspended]) ifTrue: [ogl destroy]