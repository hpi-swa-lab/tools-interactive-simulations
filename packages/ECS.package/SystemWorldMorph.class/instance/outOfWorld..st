as yet unclassified
outOfWorld: aWorld

	super outOfWorld: aWorld.
	(ogl notNil and: [ogl ~= #glSuspended]) ifTrue: [ogl destroy]