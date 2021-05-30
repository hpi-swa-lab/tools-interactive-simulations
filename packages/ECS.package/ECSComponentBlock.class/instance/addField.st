as yet unclassified
addField

	self fields isEmpty
		ifTrue: [collapseIcon iconName == #iconChevronRight
			ifTrue: [collapseIcon changeIconName: #iconChevronDown]]
		ifFalse: [collapseIcon iconName == #iconChevronRight 
			ifTrue: [self toggleCollapsed]].
	self addMorphBack: ECSComponentBlockField new