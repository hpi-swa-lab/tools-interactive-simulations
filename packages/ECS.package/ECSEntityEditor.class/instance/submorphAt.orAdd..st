as yet unclassified
submorphAt: anIndex orAdd: aBlock

	^ self body submorphCount < anIndex
		ifTrue: [ | m |
			m := aBlock value.
			self body addMorphBack: m.
			m]
		ifFalse: [self body submorphs at: anIndex]