as yet unclassified
endOfLine: position

	| line |
	line := paragraph lines at: (paragraph lineIndexOfCharacterIndex: position).
	^ line last + (paragraph string size = line last ifTrue: [2] ifFalse: [1])