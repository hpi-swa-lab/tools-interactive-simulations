query-filtering
editorAt: anIndex orAdd: aBlock

	^ list submorphCount < anIndex
		ifTrue: [ | m |
			m := aBlock value.
			list addMorphBack: m.
			m]
		ifFalse: [list submorphs at: anIndex]