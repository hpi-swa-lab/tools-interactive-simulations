actions
toggleCollapsed

	self components
		ifEmpty: [collapseIcon changeIconName: (collapseIcon iconName = #iconChevronDown 
			ifTrue: [#iconChevronRight] 
			ifFalse: [#iconChevronDown]).
			^ self].
	self components do: [:component |
		component
			visible: component visible not;
			disableLayout: component disableLayout not].
	collapseIcon changeIconName: (self components first visible
		ifTrue: [#iconChevronDown]
		ifFalse: [#iconChevronRight])