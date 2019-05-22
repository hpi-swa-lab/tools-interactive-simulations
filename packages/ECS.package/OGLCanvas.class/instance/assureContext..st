private
assureContext: aRectangle

	(ogl isNil or: [ogl = #glSuspended]) ifTrue: [self setUpOGL: aRectangle]