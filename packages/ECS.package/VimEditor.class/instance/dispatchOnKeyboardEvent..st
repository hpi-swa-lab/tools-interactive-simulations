as yet unclassified
dispatchOnKeyboardEvent: aKeyboardEvent

	| character |
	character := aKeyboardEvent keyCharacter.
	
	(self hasSelection or: [mode = #visual]) ifTrue: [^ self visualMode: aKeyboardEvent].
	mode = #insert ifTrue: [^ self inputMode: aKeyboardEvent].
	mode = #normal ifTrue: [^ self normalMode: aKeyboardEvent].
	
	^ false