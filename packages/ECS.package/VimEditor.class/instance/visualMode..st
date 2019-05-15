as yet unclassified
visualMode: aKeyboardEvent

	| character motionEnd |
	character := aKeyboardEvent keyCharacter.
	
	character = Character escape ifTrue: [self selectAt: self markIndex. mode := #normal. ^ true].
	({$x. $d} includes: character) ifTrue: [self backspace: aKeyboardEvent. ^ true].
	({$s. $c} includes: character) ifTrue: [self backspace: aKeyboardEvent. mode := #insert. ^ true].
	$y = character ifTrue: [self copySelection. self deselect. ^ true].
	
	(character between: $1 and: $9) ifTrue: [pendingCount := character asString asNumber. ^ true].
	
	motionEnd := self motionFor: aKeyboardEvent forOp: false.
	motionEnd ifNotNil: [
		self markIndex: motionEnd pointIndex: self pointIndex].
	
	^ true