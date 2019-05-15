as yet unclassified
initialize

	super initialize.
	world := SystemUniverseMorph new.
	world initForProject: (OGLWorldState new world: world).
	self setWorldBackground: true