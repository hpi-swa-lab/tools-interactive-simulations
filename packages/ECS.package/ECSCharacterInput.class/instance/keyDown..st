as yet unclassified
keyDown: anEvent

	active ifTrue: [
		self value: (Universe normalizedKeyCharacter: anEvent).
		hovered := self containsPoint: anEvent position.
		active := false.
		onChange value: value.
		self changed]