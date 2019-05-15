as yet unclassified
mouseMove: anEvent

	| index |
	(dropZoneMorph notNil and: [anEvent hand hasSubmorphs and:[self dropEnabled]]) ifTrue: [
		index := self layoutPolicy indexForInserting: anEvent hand firstSubmorph at: anEvent position in: self.
		(self submorphIndexOf: dropZoneMorph) = index ifFalse: [
			self removeMorph: dropZoneMorph; addMorph: dropZoneMorph asElementNumber: index]]