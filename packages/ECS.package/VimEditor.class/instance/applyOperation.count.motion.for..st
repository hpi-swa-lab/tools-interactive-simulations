as yet unclassified
applyOperation: aCharacter count: aNumber motion: aRange for: aKeyboardEvent

	| range |
	range := aRange.
	aNumber - 1 timesRepeat: [
		self selectAt: range stop.
		range := self encompass: range with: (self motionFor: aKeyboardEvent forOp: false)].
	
	self selectFrom: range start to: range stop.
	
	aCharacter = $d ifTrue: [self backspace: aKeyboardEvent. ^ true].
	aCharacter = $c ifTrue: [self backspace: aKeyboardEvent. mode := #insert. ^ true].
	aCharacter = $y ifTrue: [self copySelection. self deselect. ^ true]