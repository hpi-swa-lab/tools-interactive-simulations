system-world-events
mouseDown: anEvent

	self select.
	self universe handleMouseDown: anEvent from: viewEntity.
	anEvent hand newKeyboardFocus: self.
	
	(self hasProperty: #errorOnDraw)
		ifTrue: [self resumeAfterDrawError]