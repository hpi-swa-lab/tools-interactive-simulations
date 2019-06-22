system-world-events
mouseDown: anEvent

	self universe handleMouseDown: anEvent from: viewEntity.
	anEvent hand newKeyboardFocus: self.
	
	(self hasProperty: #errorOnDraw) ifTrue: [
		self resumeAfterDrawError]