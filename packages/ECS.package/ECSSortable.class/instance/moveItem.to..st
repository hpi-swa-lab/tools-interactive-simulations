as yet unclassified
moveItem: aMorph to: anInteger
	"Based on Morph>>addMorph:asElementNumber:"
	| wrapper |
	wrapper := self getWrapperByWrappee: aMorph.
	wrapper privateDelete.
	(anInteger <= self submorphs size)
		ifTrue: [self addMorph: wrapper inFrontOf: (self submorphs at: anInteger)]
		ifFalse:[self addMorphBack: wrapper]