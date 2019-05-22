as yet unclassified
initialize

	super initialize.
	world := PasteUpMorph new.
	world initForProject: OGLWorldState new.
	self setWorldBackground: true