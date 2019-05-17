as yet unclassified
initialize

	super initialize.
	
	self icon: (image := ImageMorph new).
	self when: #clicked send: #changeAsset to: self