as yet unclassified
initialize

	super initialize.
	
	self icon: (colorBlob := Morph new extent: TextStyle defaultFont height asPoint).
	self when: #clicked send: #pickColor to: self