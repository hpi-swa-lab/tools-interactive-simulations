as yet unclassified
toggleCollapsed

	self fields ifEmpty: [^ self].
	self fields do: [:field |
		field
			visible: field visible not;
			disableLayout: field disableLayout not].
	collapseIcon changeIconName: (self fields first visible
		ifTrue: [#iconChevronDown]
		ifFalse: [#iconChevronRight])