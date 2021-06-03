as yet unclassified
addMethod

	self methods isEmpty
		ifTrue: [collapseIcon iconName == #iconChevronRight
			ifTrue: [collapseIcon changeIconName: #iconChevronDown]]
		ifFalse: [collapseIcon iconName == #iconChevronRight 
			ifTrue: [self toggleCollapsed]].
	self addMorphBack: ECSMethodBlock new