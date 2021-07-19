adding/deleting
addComponent

	self components isEmpty
		ifTrue: [collapseIcon iconName == #iconChevronRight
			ifTrue: [collapseIcon changeIconName: #iconChevronDown]]
		ifFalse: [collapseIcon iconName == #iconChevronRight 
			ifTrue: [self toggleCollapsed]].
	
	self addMorphBack: ECSComponentBlock new