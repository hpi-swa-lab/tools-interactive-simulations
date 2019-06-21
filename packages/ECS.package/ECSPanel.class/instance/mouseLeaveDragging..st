event handling
mouseLeaveDragging: anEvent

	self resetHighlightForDrop.
	dropZoneMorph ifNotNil: #delete