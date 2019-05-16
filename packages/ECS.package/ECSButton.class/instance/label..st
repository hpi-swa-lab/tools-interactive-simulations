as yet unclassified
label: aString

	labelMorph ifNotNil: [self removeMorph: labelMorph].
	label := aString.
	label ifNotNil: [self addMorphBack: (labelMorph := ECSLabel new contents: aString)]