as yet unclassified
icon: anIcon

	icon ifNotNil: [self removeMorph: anIcon].
	icon :=  anIcon.
	icon ifNotNil: [self addMorph: anIcon]