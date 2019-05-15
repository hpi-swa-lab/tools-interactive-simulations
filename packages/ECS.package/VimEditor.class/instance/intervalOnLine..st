as yet unclassified
intervalOnLine: anIndex

	| line |
	line := paragraph lines at: (paragraph lineIndexOfCharacterIndex: anIndex).
	^ line = paragraph lines last
		ifTrue: [line first - 1 to: line last]
		ifFalse: [line first to: line last]