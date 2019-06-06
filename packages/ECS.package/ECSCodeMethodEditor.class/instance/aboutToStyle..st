as yet unclassified
aboutToStyle: aStyler

	self method ifNotNil: [:m |
		aStyler classOrMetaClass: m methodClass].
	^ true