actions
toggleCollapsed

	self methods
		ifEmpty: [collapseIcon changeIconName: (collapseIcon iconName = #iconChevronDown 
			ifTrue: [#iconChevronRight] 
			ifFalse: [#iconChevronDown]).
			^ self].
	self methods do: [:method |
		method
			visible: method visible not;
			disableLayout: method disableLayout not].
	collapseIcon changeIconName: (self methods first visible
		ifTrue: [#iconChevronDown]
		ifFalse: [#iconChevronRight])