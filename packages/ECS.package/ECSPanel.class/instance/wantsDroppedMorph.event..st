dropping/grabbing
wantsDroppedMorph: aMorph event: anEvent

	^ (aMorph isSystemWindow ifTrue: [aMorph firstSubmorph] ifFalse: [aMorph]) isKindOf: ECSTool