as yet unclassified
normalMode: aKeyboardEvent

	| character motionEnd |
	character := aKeyboardEvent keyCharacter.
	
	pendingOperation
		ifNotNil: [:op |
			pendingRange ifNotNil: [
				character = $( ifTrue: [self apply: (VimOperation new interval: [:e :p | p - 1 to: p + 1]). ^ true]].
			
			character = $i ifTrue: [pendingRange := $i. ^ true].
			
			motionEnd := self motionFor: aKeyboardEvent forOp: true.
			motionEnd ifNotNil: [
				self clearPending.
				op = $d ifTrue: [self apply: (VimOperation new interval: [:e :p | e normalizeInterval: (p to: (e motionFor: aKeyboardEvent forOp: true))]). ^ true].
				op = $c ifTrue: [self begin: (VimOperation new interval: [:e :p | e normalizeInterval: (p to: (e motionFor: aKeyboardEvent forOp: true))]). mode := #insert. ^ false].
				op = $y ifTrue: [self selectInterval: (self normalizeInterval: (self markIndex to: motionEnd)). self copySelection. ^ true]]].
	
	character = $. ifTrue: [self apply: (VimOperation new contents: repeatableOperation contents; interval: repeatableOperation interval). ^ false].
	character = $u ifTrue: [lastOperation := lastOperation undoIn: self. ^ true].
	
	character = $v ifTrue: [mode := #visual. ^ false].
	
	character = $i ifTrue: [self begin: (VimOperation new interval: [:e :p | p to: p - 1]; contents: ''). mode := #insert. ^ false].
	character = $a ifTrue: [self begin: (VimOperation new interval: [:e :p | p + 1 to: p]; contents: ''). mode := #insert. ^ false].
	character = $o ifTrue: [self begin: (VimOperation new interval: [:e :p | (e endOfLine: p) in: [:x | x to: x - 1]]; contents: String cr). mode := #insert. ^ false].
	character = $O ifTrue: [self begin: (VimOperation new interval: [:e :p | (e beginningOfLine: p) in: [:x | x to: x - 1]]; contents: String cr). mode := #insert. ^ false].
	
	character = $D ifTrue: [self begin: (VimOperation new interval: [:e :p | p to: (e endOfLine: p) - 2]; contents: ''). ^ true].
	character = $C ifTrue: [self begin: (VimOperation new interval: [:e :p | p to: (e endOfLine: p) - 2]; contents: ''). mode  := #insert. ^ false].
	character = $S ifTrue: [self begin: (VimOperation new interval: [:e :p | (e beginningOfLine: p) to: (e endOfLine: p) - 2]; contents: ''). mode  := #insert. ^ false].
	
	character = $c ifTrue: [pendingOperation := $c. ^ true].
	character = $d ifTrue: [
		pendingOperation = $d ifTrue: [self apply: (VimOperation new contents: ''; interval: [:e :p | e intervalOnLine: p]). ^ true].
		pendingOperation := $d. ^ true].
	character = $y ifTrue: [pendingOperation := $y. ^ true].
	
	(character between: $1 and: $9) ifTrue: [pendingCount := character asString asNumber. ^ true].
	
	(self motionFor: aKeyboardEvent forOp: false) ifNotNil: [:m | self selectAt: m].
	
	^ true