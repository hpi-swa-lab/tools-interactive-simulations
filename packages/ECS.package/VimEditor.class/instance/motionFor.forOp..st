as yet unclassified
motionFor: aKeyboardEvent forOp: aBoolean

	| character |
	character := aKeyboardEvent keyCharacter.
	
	character = $h ifTrue: [^ self markIndex - 1].
	character = $l ifTrue: [^ self markIndex + 1].
	character = $k ifTrue: [^ (self sameColumn: self markIndex newLine: [:line | line - 1] forward: false)].
	character = $j ifTrue: [^ (self sameColumn: self markIndex newLine: [:line | line + 1] forward: true)].
	character = $e ifTrue: [^ (self nextWord: self markIndex + 1) - 1].
	character = $w ifTrue: [^ aBoolean ifFalse: [(self nextWord: self markIndex + 1) + 1] ifTrue: [(self nextWord: self markIndex + 1) - 1]].
	character = $b ifTrue: [^ (self previousWord: (self markIndex - 1 max: 1))].
	character = $$ ifTrue: [^ (self endOfLine: self markIndex)].
	character = $0 ifTrue: [^ (self beginningOfLine: self markIndex)].
	^ nil