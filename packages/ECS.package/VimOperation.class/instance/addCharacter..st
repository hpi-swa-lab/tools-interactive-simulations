as yet unclassified
addCharacter: aCharacter

	contents := contents copyWith: aCharacter.
	appliedInterval := appliedInterval start to: appliedInterval stop + 1