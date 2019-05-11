as yet unclassified
initialize

	super initialize.
	world := SystemWorldMorph new.
	world initForProject: (OGLWorldState new world: world).
	self setWorldBackground: true