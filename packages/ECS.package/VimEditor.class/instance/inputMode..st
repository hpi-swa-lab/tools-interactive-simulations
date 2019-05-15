as yet unclassified
inputMode: aKeyboardEvent

	| character |
	character := aKeyboardEvent keyCharacter.
	
	character = Character escape ifTrue: [currentOperation finishAt: self markIndex. self clearPending. mode := #normal. ^ true].
	character = Character backspace ifTrue: [currentOperation removeLastCharacter. self backspace: aKeyboardEvent. ^ false].
	
	currentOperation insertCharacter: character at: self markIndex.
	self normalCharacter: aKeyboardEvent.
	
	^ false