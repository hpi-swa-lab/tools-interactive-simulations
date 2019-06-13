as yet unclassified
updateIcon

	hasChildren ifFalse: [^ self].
	self firstSubmorph icon changeIconName: (expanded ifTrue: [#iconChevron_down] ifFalse: [#iconChevron_right])