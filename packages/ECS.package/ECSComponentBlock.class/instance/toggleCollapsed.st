actions
toggleCollapsed

	self fields ifEmpty: [collapseIcon changeIconName: (collapseIcon iconName == #iconChevronDown 
		ifTrue: [#iconChevronRight] 
		ifFalse: [#iconChevronDown]).
		^ self].
	self fields do: [:field |
		field
			visible: field visible not;
			disableLayout: field disableLayout not].
	collapseIcon changeIconName: (self fields first visible
		ifTrue: [#iconChevronDown]
		ifFalse: [#iconChevronRight])