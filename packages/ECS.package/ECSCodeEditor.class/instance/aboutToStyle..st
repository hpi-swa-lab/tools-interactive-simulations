as yet unclassified
aboutToStyle: aStyler

	self editingMethod ifNotNil: [:m |
		aStyler classOrMetaClass: m methodClass].
	^ true