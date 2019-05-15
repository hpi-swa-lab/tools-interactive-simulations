as yet unclassified
insertCharacter: aCharacter at: anIndex

	| relativeIndex |
	relativeIndex := anIndex - appliedInterval start.
	contents := (contents first: relativeIndex), aCharacter asString, (contents allButFirst: relativeIndex).
	appliedInterval := appliedInterval start to: (appliedInterval stop max: relativeIndex) + 1