event handling
mouseEnterDragging: evt
	(evt hand hasSubmorphs and:[self dropEnabled]) ifFalse: ["no d&d"
		^super mouseEnterDragging: evt].
	(self wantsDroppedMorph: evt hand firstSubmorph event: evt )
		ifTrue:[
			self highlightForDrop.
			dropZoneMorph ifNotNil: #delete.
			dropZoneMorph := Morph new extent: 0 @ 50; vResizing: #rigid; hResizing: #spaceFill; color: Color orange; yourself.
			self addMorph: dropZoneMorph asElementNumber: (self layoutPolicy indexForInserting: evt hand firstSubmorph at: evt position in: self)]