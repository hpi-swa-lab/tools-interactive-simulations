layout
acceptDroppingMorph: aMorph event: anEvent

	(aMorph isKindOf: SystemWindow)
		ifTrue: [super acceptDroppingMorph: aMorph firstSubmorph attached event: anEvent]
		ifFalse: [super acceptDroppingMorph: aMorph event: anEvent].
	
	dropZoneMorph ifNotNil: #delete