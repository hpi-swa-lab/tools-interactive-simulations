accessing
setSelected: anItem morph: aMorph

	selectedMorph ifNotNil: [selectedMorph ~~ aMorph ifTrue: [selectedMorph deselect]].
	selectedMorph := aMorph.
	selected := anItem.
	self scrollToShow: (0 @ aMorph position y extent: 0 @ aMorph height).
	"self scrollToShow: (aMorph layoutInset left @ aMorph position y extent: self width @ aMorph height)"