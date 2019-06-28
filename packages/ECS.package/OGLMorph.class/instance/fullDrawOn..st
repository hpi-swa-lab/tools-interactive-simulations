as yet unclassified
fullDrawOn: aCanvas
	
	(canvas assureContext: self bounds)
		frameDo: [
			canvas origin: self position negated.
			canvas drawQuad.
			"super fullDrawOn: canvas"]
		worldOrigin: self position