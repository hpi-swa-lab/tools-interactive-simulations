as yet unclassified
moveItem: aMorph to: anInteger
	
	| wrapper |
	wrapper := self getWrapperByWrappee: aMorph.
	self addMorph: wrapper asElementNumber: anInteger