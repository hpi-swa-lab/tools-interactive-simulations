as yet unclassified
initialize

	super initialize.
	world := SystemUniverseMorph new wantsOGL: true.
	world initForProject: (OGLWorldState new world: world).
	self setWorldBackground: true